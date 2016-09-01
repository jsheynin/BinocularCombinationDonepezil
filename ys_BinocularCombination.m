% ================================================================
% Binocular Combination with Patching + Donepezil Experiment
% Adapted for Dichoptic viewing with a stereoscope
% Yasha Shenynin, Fall 2016

% Dichoptically presents two gratings for the participant to binocularly
% view and determine the perceived center of the fused image
% ================================================================

function ys_BinocularCombinationDonepezil

%% Start wrapper function that initializes the experiment and obtains subject information.

file.subjectID = input('Enter the Subject ID: ', 's');

%% Determine experimental condition - TBD
file.patchedEye = input('Patched Eye - L/R?: ', 's');

while ~strcmp(file.patchedEye, 'L') && ~strcmp(file.patchedEye, 'R')
    file.patchedEye = input('Please enter a valid value for patched eye: L/R?: ', 's');
end
%% File, directory info for subject data structure

file.maindir = '/Users/Yasha/Google Drive/Research/Binocular Combination';
file.timeStamp = datestr(now, 'ddmmmyyyy');
file.dataPath = [file.maindir '/data'];
file.fileName = [file.dataPath,'/' [file.subjectID], 'BinocularCombinationDonepezil',file.timeStamp];

%% Initialize or Load Subject data structure with set parameters

loadData = 0;
if exist([file.fileName '.mat'], 'file') && ~strcmp(file.subjectID, 'test');
    loadData=input('Subject directory already exists. Load data? y/n:    ', 's');
    if strcmp(loadData, 'y')
        loadData=1;
    else
        loadData=0;
    end
end


%%  Run core experiment

return

function ys_BinocularCombinationParameters

% sets parameters for experiment

function ys_BinocularCombinationCoreExpe

%% Load in all existing data structures for subject

%% Initialize Psychtoolbox, PsychAudio, Key presses, Screen

%% Run Gamma Correction
% load gamma parameters from file
% create LUT 
% send LUT to graphics card --- Screen('LoadNormal)

%% Run binocular alignment for fusion, adjust position of frames


%% Begin trial loop
% Embedded loop within trial that waits for up/down arrow keys to determine
% the center of the stimulus
% Saves data point as normalized distance -/+ from starting point.


return


