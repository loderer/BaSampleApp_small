classdef Application < handle
    %APPLICATION Runs the sample application.
    
    methods        
        function startup(~)   
            % Create javaFX-application.
            jfxApplicationAdapter = JFXApplicationAdapter();

            % Create stage. 
            stageController = JFXStageController(jfxApplicationAdapter, 'Hello World');
            % Create scene.
            sceneController = SampleController(Config.pathToSampleFxml);
            stageController.showScene(sceneController);
        end
    end
    
end

