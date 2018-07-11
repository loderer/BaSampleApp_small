classdef SampleTest < matlab.unittest.TestCase
 
    properties
        jfxApplicationAdapter; 
        sampleController; 
    end
     
    methods(TestMethodSetup)
        function start(testCase)
            import jfx4matlab.matlab.*;
            testCase.jfxApplicationAdapter = JFXApplicationAdapter();
            stageController = JFXStageController(...
                testCase.jfxApplicationAdapter, 'Hello World');
            testCase.sampleController =...
                SampleController(...
                'C:\Users\rudi\Documents\GitHub\BaSampleApp_small\sample.fxml');
            stageController.showScene(testCase.sampleController);
        end
    end
 
    methods(TestMethodTeardown)
        function close(testCase)
            allStageControllers =...
                testCase.jfxApplicationAdapter.getAllStageControllers();
            for i = 1 : size(allStageControllers)
                allStageControllers.get(i)...
                    .getSceneController().forceClose(); 
            end
        end
    end
 
    methods(Test)
        function doNotClickBtn(testCase)
            lbl_value = char(testCase.sampleController.lbl.getText()); 
            testCase.verifyEqual(lbl_value, 'Hello world!!!', ...
                'The scene is initialized incorrectly.')
        end
        
        function clickBtn(testCase)
            testCase.sampleController.mockSceneEvent('btn', 'ACTION'); 
            lbl_value = char(testCase.sampleController.lbl.getText()); 
            testCase.verifyEqual(lbl_value, 'heureka', ...
                'Click on button has been handled incorrect.')
        end
    end
end