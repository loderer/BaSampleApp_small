% Add required directories to classpath.-----------------------------------

% Add all MATLAB-sources to the class path. 
addpath(genpath(...
    'C:\Users\rudi\Documents\GitHub\BaSampleApp_smallSampleApplication'));
% Add MATLAB-library to class path. 
addpath(genpath(...
    'C:\Users\rudi\Documents\GitHub\BaMatlab\jfx_4_matlab_adapter')); 
% Add the javaFX-runtime to the static class path. 
javaaddpathstatic(Config.jfxrtPath);    
% Add the javaFX-application to the static class path. 
javaaddpathstatic(Config.jfx4matlabPath); 
%--------------------------------------------------------------------------

% Create javaFX-application.
jfxApplicationAdapter = JFXApplicationAdapter();

% Create stage. 
stageController = JFXStageController(jfxApplicationAdapter, 'Hello World');
% Create scene.
sceneController = SampleController(Config.pathToSampleFxml);
stageController.showScene(sceneController);