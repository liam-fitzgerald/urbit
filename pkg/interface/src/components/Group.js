import React, { Component } from 'react';
import _ from 'lodash';
import { Dropdown } from '../apps/publish/components/lib/dropdown';
import { cite, deSig } from '../lib/util';
import { roleForShip } from '../lib/group';

class GroupMember extends Component {
  render() {
    const { ship, options, width, children } = this.props;

    return (
      <div className='flex justify-between f9'>
        <div className='flex flex-column'>
          <div className='mono mr2'>{`${cite(ship)}`}</div>
          {children}
        </div>
        {options.length > 0 && (
          <Dropdown options={options} width={width} buttonText={'Options'} />
        )}
      </div>
    );
  }
}

class Tag extends Component {
  render() {
    const { description, onRemove } = this.props;
    return (
      <div className='br-pill ba b-black r-full items-center ph2 f9 mr2 flex'>
        <div>{description}</div>
        {Boolean(onRemove) && (
          <div onClick={onRemove} className='ml1 f9 pointer'>
            ✗
          </div>
        )}
      </div>
    );
  }
}

export class Group extends Component {
  constructor() {
    super();
  }

  removeUser(who) {
    return () => {
      const action = {
        remove: {
          members: [who],
          path: this.props.path
        }
      };
      this.props.api.groupAction(action);
    };
  }

  removeTag(who, tag) {
    const [, , ship, name] = this.props.resourcePath.split('/');
    const action = {
      'remove-tag': {
        resource: { ship, name },
        tag: { app: tag.app, tag: tag.tag },
        ships: [`~${who}`]
      }
    };
    return this.props.api.groupAction(action);
  }

  addTag(who, tag) {
    const [, , ship, name] = this.props.resourcePath.split('/');
    const action = {
      'add-tag': {
        resource: { ship, name },
        tag: { app: tag.app, tag: tag.tag },
        ships: [`~${who}`]
      }
    };
    return this.props.api.groupAction(action);
  }

  canModify(ship, tag) {
    const [, , host] = this.props.resourcePath.split('/');
    if (
      ship === deSig(host) &&
      (tag.tag === 'admin' || tag.tag === 'moderator' || tag.tag === 'janitor')
    ) {
      return false;
    }
    const role = roleForShip(this.props.group, window.ship);
    if (tag.tag === 'admin' || tag.tag === 'moderator') {
      return role === 'admin';
    }
    return role === 'admin' || role === 'moderator';
  }

  renderMembers() {
    const { members, tags } = this.props.group;
    const [, , host, name] = this.props.resourcePath.split('/');
    return (
      <div className='flex flex-column'>
        <div className='f9 gray2 mt6 mb3'>Members</div>
        {members.map(ship => {
          const [hasTags, missingTags] = _.partition(
            this.props.tags,
            ({ tag, app }) =>
              _.get(tags, app ? `['${app}']['${tag}']` : tag, []).findIndex(
                s => s === ship
              ) !== -1
          );
          const options = missingTags.reduce(
            (opts, tag) =>
              this.canModify(ship, tag)
                ? [
                    ...opts,
                    {
                      cls: 'pointer tr pr4 pv2 w-100',
                      txt: tag.addDescription,
                      action: () => {
                        this.addTag(ship, tag);
                      }
                    }
                  ]
                : opts,
            []
          );
          return (
            <div key={ship} className='flex flex-column'>
              <GroupMember ship={ship} options={options} width={144}>
                <div className='flex mt2 mb4'>
                  {hasTags.map(tag => {
                    const onRemove = this.canModify(ship, tag)
                      ? () => this.removeTag(ship, tag)
                      : null;
                    return (
                      <Tag
                        key={tag.tag}
                        onRemove={onRemove}
                        description={tag.description}
                      />
                    );
                  })}
                </div>
              </GroupMember>
            </div>
          );
        })}
      </div>
    );
  }

  renderInvites() {
    const ships = this.props.group.policy.invite.pending || [];

    return (
      <div className='flex flex-column'>
        <div className='f9 gray2 mt6 mb3'>Pending</div>
        {ships.map(ship => (
          <GroupMember key={ship} ship={ship} options={[]} width={250} />
        ))}
        {ships.length === 0 && <div className='f9'>No ships are pending</div>}
      </div>
    );
  }

  renderBanned() {
    const ships = this.props.group.policy.open.banned || [];

    return (
      <div className='flex flex-column'>
        <div className='f9 gray2 mt6 mb3'>Banned</div>
        {ships.map(ship => (
          <GroupMember key={ship} ship={ship} options={[]} width={250} />
        ))}
        {ships.length === 0 && <div className='f9'>No ships are banned</div>}
      </div>
    );
  }

  render() {
    const { group, resourcePath, className } = this.props;
    const [, , host, name] = resourcePath.split('/');
    const policyKind = Object.keys(group.policy)[0];

    return (
      <div className={className}>
        <div className='flex flex-column'>
          <div className='f9 gray2'>Host</div>
          <div className='flex justify-between mt3'>
            <div className='f9 mono mr2'>{cite(host)}</div>
          </div>
        </div>
        {policyKind === 'invite' && this.renderInvites()}
        {policyKind === 'open' && this.renderBanned()}
        {this.renderMembers()}
      </div>
    );
  }
}
