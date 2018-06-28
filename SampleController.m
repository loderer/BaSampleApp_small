classdef SampleController < JFXSceneController
    %SAMPLECONTROLLER Controller class for the sample scene.
    
    methods
        function obj = SampleController(fxml)
            obj = obj@JFXSceneController(fxml);
        end
        
        function eventConsumed = handleSceneEvent(obj, e) 
            eventConsumed = 0; 
            if(strcmp(e.fxId, 'btn')...
                    && strcmp(e.action, 'ACTION'))
                % Handle click on btn.
                lbl = obj.getUiElement('lbl');
                obj.applyTask(lbl, 'setText', 'heureka');
                eventConsumed = 1;
            end
        end
    end
    
end

