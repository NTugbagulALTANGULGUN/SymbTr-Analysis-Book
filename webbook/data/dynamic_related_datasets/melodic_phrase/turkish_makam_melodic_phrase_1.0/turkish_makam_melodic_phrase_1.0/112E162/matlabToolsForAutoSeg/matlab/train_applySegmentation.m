%train_applySegmentation  {no inputs}
%Bu fonksiyon bir klasorde(trainDbaFolder) toplanmis verilerden ogrenme gerceklestirir ve
%diger klasordeki(targetDbaFolder) verilere uygular.

%This function performs training of the automatic segmentation from a dba
%in a directory(trainDbaFolder) and then applies automatic segmentation on files in another
%directory (targetDbaFolder)

%--------------------------------
%trainDbaFolder='/Users/barisbozkurt/Documents/MAKAM_DATA/segmentation/butunVeriler_v9/symbtr_cc_489/';
%targetDbaFolder='/Users/barisbozkurt/Documents/MAKAM_DATA/symbtr2/txt/';
trainDbaFolder='/Users/barisbozkurt/Documents/melodikAnalizProjesi/web/matlab/sampleData/train/';
targetDbaFolder='/Users/barisbozkurt/Documents/melodikAnalizProjesi/web/matlab/sampleData/test/';
usulFile='/Users/barisbozkurt/Documents/melodikAnalizProjesi/web/matlab/files/usuller.txt';
noteTableFile='/Users/barisbozkurt/Documents/melodikAnalizProjesi/web/matlab/files/noteTable.txt';

%Ezgi siniri dagilimlarini hesapla / compute melodic boundary histograms
boundaryStatLearn( trainDbaFolder , noteTableFile, usulFile);load(fullfile(trainDbaFolder,'makamUsulBoundDist.mat'));

%Egitim verileri icin oznitelikleri hesapla ve ptxt dosyalarina yazdir
%Compute features for training data set and write to ptxt files
boundaryFeatures4folder(trainDbaFolder, makamHist,usulHist,usulFile,midiNo);

%Egitim / Perform learning/training
[FLDmodel]=trainMelodicSegmentation(trainDbaFolder);

%Uygulama verileri icin oznitelikleri hesapla ve ptxt dosyalarina yazdir
%Compute features for the main data set and write to ptxt files
boundaryFeatures4folder(targetDbaFolder, makamHist,usulHist,usulFile,midiNo);

%Oznitelikleri iceren dosyalardan otomatik segmentasyon olustur
%Perform automatic segmentation using the trained model
%   Veriler uzerinde gorsel karsilastirma yapabilmek amaciyla egitim seti
%   icin de calistir (.autoSeg ve .manSeg dosyalari acilip kontrol edilebilir) 
autoMelodicSegmentation(trainDbaFolder, FLDmodel); 
autoMelodicSegmentation(targetDbaFolder, FLDmodel);