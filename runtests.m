% Add required directories to classpath.-----------------------------------

% Add all MATLAB-sources to the class path. 
addpath(genpath('C:\Users\rudi\Documents\GitHub\BaSampleApp_small'));
% Add MATLAB-library to class path. 
addpath('C:\Users\rudi\Documents\GitHub\jfx4matlab');
import jfx4matlab.matlab.*;
%--------------------------------------------------------------------------

sampleTest = SampleTest(); 
sampleTest.run