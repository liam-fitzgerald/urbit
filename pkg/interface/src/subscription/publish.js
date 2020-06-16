import BaseSubscription from './base';

export default class PublishSubscription extends BaseSubscription {
  start() {
    this.subscribe('/primary', 'publish');
    this.subscribe('/groups', 'group-store');
    this.subscribe('/primary', 'contact-view');
    this.subscribe('/all', 'invite-store');
    this.subscribe('/all', 'permission-store');
    this.subscribe('/app-name/contacts', 'metadata-store');
  }
}

