classdef Application < handle
    %STARTUP Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
    end
    
    methods        
        function startup(~)   
            % Create javaFX-application.
            jfxApplicationAdapter = JFXApplicationAdapter();

            stageController = JFXStageController(jfxApplicationAdapter, 'Hello World');
            sceneController = SampleController('C:\Users\rudi\Documents\GitHub\BaSampleApp_matlabLib\sample.fxml');
            stageController.showScene(sceneController);
        end
    end
    
end

