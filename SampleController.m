classdef SampleController < JFXSceneController
    %SAMPLECONTROLLER Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
    end
    
    methods
        function obj = SampleController(fxml)
            obj = obj@JFXSceneController(fxml);
        end
        
        function eventConsumed = handleSceneEvent(obj, e) 
            eventConsumed = 0; 
            if(strcmp(e.fxId, 'btn')...
                    && strcmp(e.action, 'ACTION'))
                 lbl = obj.getUiElement('lbl');
                 obj.applyTask(lbl, 'setText', 'heureka');
                 eventConsumed = 1;
            end
        end
    end
    
end

