classdef Application < handle
    %APPLICATION Runs the sample application.
    
    methods        
        function startup(~)   
            % Create javaFX-application.
            jfxApplicationAdapter = JFXApplicationAdapter();

            % Create stage. 
            stageController = JFXStageController(jfxApplicationAdapter, 'Hello World');
            % Create scene.
            sceneController = SampleController('C:\Users\rudi\Documents\GitHub\BaSampleApp_matlabLib\sample.fxml');
            stageController.showScene(sceneController);
        end
    end
    
end

