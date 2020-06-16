import _ from 'lodash';
import { resourceAsPath } from '../lib/util';

function groupToPermissions({ policy, members }) {
  const policyKind = Object.keys(policy)[0];
  const kind = policyKind === 'open' ? 'black' : 'white';
  const who = policyKind === 'open' ? new Set(policy.open.banned) : new Set(members);
  return {
    kind,
    who
  };
}

export default class GroupReducer {

  reduce(json, state) {
    const data = _.get(json, "group-update", false);
    if (data) {
      // TODO: revive other reducers
      this.addGroup(data, state);
      this.addMembers(data, state);
      this.addTag(data, state);
      this.removeMembers(data, state);
      this.initialGroup(data,state);
      this.removeTag(data, state);
      this.initial(data, state);
    }
  }

  initial(json, state) {
    const data = _.get(json, 'initial', false);
    if(data) {
      state.groups = _.mapValues(data, group => new Set(group.members));
      state.permissions = _.mapValues(data, groupToPermissions);
      state.fullGroups = data;
    }
  }

  initialGroup(json, state) {
    const data = _.get(json, 'initial-group', false);
    if(data) {
      const resourcePath = resourceAsPath(data.resource);
      state.groups[resourcePath] = new Set(data.group.members);
      state.permissions[resourcePath] = groupToPermissions(data.group);
      state.fullGroups[resourcePath] = data.group;
    }
  }

  addGroup(json, state) {
    const data = _.get(json, 'add-group', false);
    if(data) {
      const resourcePath = resourceAsPath(data.resource);
      state.groups[resourcePath] = new Set([window.ship]);
      state.permissions[resourcePath] = groupToPermissions({
        policy: data.policy,
        members: [window.ship]
      });
    }
  }


  addMembers(json, state) {
    const data = _.get(json, 'add-members', false);
    if (data) {
      const resourcePath = resourceAsPath(data.resource);
      for (const member of data.ships) {
        state.groups[resourcePath].add(member);
      }
    }
  }

  removeMembers(json, state) {
    const data = _.get(json, 'add-members', false);
    if (data) {
      const resourcePath = resourceAsPath(data.resource);
      for (const member of data.ships) {
        state.groups[resourcePath].remove(member);
      }
    }
  }

  addTag(json, state) {
    const data = _.get(json, 'add-tag', false);
    if (data) {
      const resourcePath = resourceAsPath(data.resource);
      const tag = data.tag;
      const tags = state.fullGroups[resourcePath].tags;
      if(tag.app) {
        _.set(tags, [tag.app, tag.tag], _.get(tags, [tag.app,tag.tag], []).concat(data.ships));
      } else {
        _.set(tags, tag.tag, _.get(tags, tag.tag, []).concat(data.ships));
      }
    }
  }

  removeTag(json, state) {
    const data = _.get(json, 'remove-tag', false);
    if (data) {
      const resourcePath = resourceAsPath(data.resource);
      const tag = data.tag;
      const tags = state.fullGroups[resourcePath].tags;
      if(tag.app) {
        _.set(tags, [tag.app, tag.tag],
              _.get(tags, [tag.app,tag.tag], [])
               .filter(tagged => data.ships.findIndex(ship => tagged == ship) === -1));
      } else {
        _.set(tags, tag.tag,
              _.get(tags, tag.tag, [])
               .filter(tagged => data.ships.findIndex(ship => tagged == ship) === -1));
      }
    }
  }

}
