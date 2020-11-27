import { api, LightningElement, wire } from 'lwc';
import getUserName from '@salesforce/apex/lwcvf_ExampleController.getUserName';

export default class Lwcvf_ExampleComponent extends LightningElement {
  @api title;
  @api items;
  userName;

  @wire(getUserName, {})
  wiredUserName({ error, data }) {
    if (error) {
      console.error('Error loading user name. ', error);
    } else if (data) {
      this.userName = data;
    }
  }
}
