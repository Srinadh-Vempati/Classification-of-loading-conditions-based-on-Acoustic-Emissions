clc
clear all
%% Data set1

loadDataset1

%% Data set 2

loadDataset2

%% FFT & Filter details
order = 4;
freq1 = 500;
freq2 = 21000;
nfft = 2^nextpow2(L);
t = linspace(0,L/Fs,L);% time
f = Fs * linspace(0,1,nfft); % Frequency spectrum

%% Unfiltered FFT & Time - freq plots of Data set1

Unfilteredplots

Spectrogramplot

%% Datasets 1 & 2 filtering

Datafiltering

%% FFT & Time - freq plots of Data set 1

FilteredFFTplot

Spectrogramplot

%% Reshaping Dataset 1

reshapeDataset1

%% Reshaping Dataset 2

reshapeDataset2

%% Dataset 1 Features 

Dataset1features

%% Dataset 2 Features

Dataset2features

%% Training set creation

Trainingset

%%  Test set

Testset

%% Features Table

Ttrain = array2table(features);
Ttrain.Properties.VariableNames{23} = 'Group';
groupid = Ttrain.Group;

Ttest = array2table(testfeatures);
Ttest.Properties.VariableNames{23} = 'Group';
testgroupid = Ttest.Group;

featsall = [trainingfeats ; testfeats];
groupidsall = [groupid ; testgroupid];



%% Neural network classification

for i = 1:10
    net = patternnet(i);
    cvp = cvpartition(size(groupidsall,1),'Holdout',0.2);
    
    nnfeaturesTrain = featsall(cvp.training,:);
    nngroupidTrain = groupidsall(cvp.training,:);
    nnfeaturesTest = featsall(cvp.test,:);
    nngroupidTest = groupidsall(cvp.test,:);
    
    net = train(net, nnfeaturesTrain', dummyvar(nngroupidTrain)');
    
    predgroupidNN = net(nnfeaturesTest');
    
    figure()
    plotconfusion(dummyvar(nngroupidTest)',predgroupidNN)
    title(['NN depth = ' num2str(i) ' layers']);

end
