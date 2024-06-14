import { LightningElement, api } from 'lwc';

export default class CreditCard extends LightningElement {
    @api cardNumber;
    @api cardHolder;
    @api expiryDate;
    @api cvv;
}