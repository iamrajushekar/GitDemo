import { LightningElement, track } from 'lwc';

export default class greetTextLWC extends LightningElement {

    @track greeting= 'Apex Hours';

    greetUser(Event){
        let txtInput = this.template.querySelector(".txtInput");
        this.greeting = txtInput.value;
    }
}