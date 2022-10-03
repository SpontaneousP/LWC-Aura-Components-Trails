import { LightningElement, api } from 'lwc';
import { NavigationMixin } from 'lightning/navigation';

export default class BusinessCardChildComponent extends NavigationMixin(LightningElement) {
    @api userDetails
    
    clickme(event) {
        this[NavigationMixin.Navigate]({
            type: "standard__webPage",
            attributes: {
            url: event.target.value
            }
        });    
        
     }
}