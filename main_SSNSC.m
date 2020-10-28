%     demo for Spectral-Spatial Nearest Subspace Classifier
%------------Brief description------------------------------------
%
%
% This demo implements the Spectral-Spatial Nearest Subspace Classifier for
% Hyperspectral Image Classification classification [1]
%
%
% More details in paper:
%
% [1]
%
% contact: kgtoker@ee.hacettepe.edu.tr
%
% Note: Please first download "Salinas" data.

clear all; close all; clc

dataType = 1; % 1: Salinas 2: PaviaU 3: KSC 4: Indian_pines 5: PaviaC 6: Indian Pine 8 classes 7: Pavia Center subscene
trainingDataSize = 40; % number of training data
spatialSize = 9; % window size eg. spatialSize = 9 means 9x9 window
%% Pick an hyperspectral image and load the data
addpath('dataset');
[data,gt, sz, no_lines, no_rows, no_bands, imageName] = loadHypData(dataType);
%% Get only the labeled data (Get rid of unlabeled instances)
[allLabeledData, gtVector, dataCascade, no_classes, numberOfInstancesOfEachClass] = getLabeledDataAndTheirGTs(gt,data);
%% Determine random train and test indices
% [trainIndexes,testIndexes] = determineTrainAndTestIndices(trainingDataSize, no_classes, allLabeledData, numberOfInstancesOfEachClass);
load(['dataType' num2str(dataType) 'Indexes' num2str(1) 'trSize' num2str(trainingDataSize) '.mat'])

%% Get spatial data
[cellSpatialDataCascade] = getSpatialData(dataCascade, sz, trainIndexes, spatialSize);
%% Determine train and test data
[trainData, trainLabel, testData, testLabel] = determineTrainAndTestData(trainIndexes, testIndexes, dataCascade, gtVector, sz);

%% Classification via CCA
cellSpatialTestData = cellSpatialDataCascade(testIndexes(1,:));
dataCascadeTestData = dataCascade(:,testIndexes(1,:));
tic
[predLabelAll, corrMatrix] = ClassificationViaCCA(trainData, trainingDataSize, cellSpatialTestData, no_classes, dataCascadeTestData);
elapsedTimeCCA = toc;
disp(['time for CCA = ',num2str(elapsedTimeCCA)]);
predLabelPlot = zeros(sz(1)*sz(2),1);
predLabelPlot(testIndexes(1,:)) = predLabelAll;
figure,
imagesc(reshape(predLabelPlot,[sz(1) sz(2)]))
accuracyCCA = mean(testLabel == predLabelAll) *100
disp(['Accuracy for CCA = ',num2str(accuracyCCA)]);












