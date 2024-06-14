import { LightningElement,api} from 'lwc';
export default class ProgressIndicatorFlow extends LightningElement {
    @api stages;
    @api currentStage;
    @api indicatorType;
    @api stageTitle;
    
    stagesArray = [];
     
    connectedCallback(){

        if(this.stages != null){

            this.stagesArray = this.stages.split(',');


        }
        else {
            this.stagesArray ='';

        }

        
    }

}