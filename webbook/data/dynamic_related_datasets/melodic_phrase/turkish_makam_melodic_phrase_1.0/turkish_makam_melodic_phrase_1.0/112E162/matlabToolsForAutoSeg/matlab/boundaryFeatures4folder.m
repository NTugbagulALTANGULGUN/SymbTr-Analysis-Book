function boundaryFeatures4folder(dbaFolder, makamHist,usulHist,usulFile,midiNo)
%'boundaryFeatures' fonksiyonunu klasordeki dosyalar icin cagirir
% Batch function to execute 'boundaryFeatures' function on all files in a
% directory

cd(dbaFolder);
files=dir('*.txt');
for x=1:length(files)
    fileName=files(x).name;
    
    symbTrFile=[dbaFolder fileName];
    
    s = regexp(fileName, '--', 'split');makam=s(1);usul=s(3);
    
    %makam ve usul indeksini bul
    makamBulundu=0;usulBulundu=0;
    for makamInd=1:length(makamHist)
        if(strcmp(makamHist(makamInd).name,makam)), makamBulundu=1;break; end
    end
    for usulInd=1:length(usulHist)
        if(strcmp(usulHist(usulInd).name,usul)), usulBulundu=1; break; end
    end
    
    if (makamBulundu && usulBulundu)
        boundaryFeatures(symbTrFile,makamHist(makamInd),usulHist(usulInd),usulFile,midiNo);
    else
        disp('makam and/or usul could not be found, segmentation could not be performed');
        disp(symbTrFile);
    end
    
end