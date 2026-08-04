function [makamList,usulList]=createListOfMakamsUsuls( folderName,usulFile )
%Klasordeki makam ve usullerin listesini ve kac parca icerdiklerini cikarir
%Forms list of makams and usuls and the number of pieces, melodic boundaries, etc. 

currentDir=pwd;
cd(folderName);
files=dir('*.txt');
makamList=struct('name',[],'numFiles',[],'numPhrases',[]);
usulList=struct('name',[],'numFiles',[],'numPhrases',[]);

makamList(1).name='rast';makamList(1).numFiles=0;makamList(1).numPhrases=0;
usulList(1).name='aksak';usulList(1).numFiles=0;usulList(1).numPhrases=0;

for findex=1:length(files)
    s = regexp(files(findex).name, '--', 'split');
    makam=char(s(1));
    usul=char(s(3));
    cumleSayisi=countPhrases(files(findex).name,usulFile);
    %makam eklenmis mi diye bak, eklenmemis ise ekle
    %add to makam list if not already there
    makamMatched=0;
    for k=1:length(makamList)
        if(strcmp(makamList(k).name,makam))
            makamList(k).numFiles=makamList(k).numFiles+1;
            makamList(k).numPhrases=makamList(k).numPhrases+cumleSayisi;
            makamMatched=1;
            break;
        end
    end
    if(~makamMatched)
        index=length(makamList)+1;
        makamList(index).name=makam;
        makamList(index).numFiles=1;
        makamList(index).numPhrases=cumleSayisi;
    end
    %usul eklenmis mi diye bak, eklenmemis ise ekle
    usulMatched=0;
    for k=1:length(usulList)
        if(strcmp(usulList(k).name,usul))
            usulList(k).numFiles=usulList(k).numFiles+1;
            usulList(k).numPhrases=usulList(k).numPhrases+cumleSayisi;
            usulMatched=1;
            break;
        end
    end
    if(~usulMatched)
        index=length(usulList)+1;
        usulList(index).name=usul;
        usulList(index).numFiles=1;
        usulList(index).numPhrases=cumleSayisi;
    end
end
outFile=fullfile(folderName,'makamUsulSayilari.outtxt');
fid=fopen(outFile,'w+t');
fprintf(fid,'Makam\t# files\t# phrases\t\n\r');
for index=1:length(makamList)
    fprintf(fid,'%s\t%d\t%d\n\r',makamList(index).name,makamList(index).numFiles,makamList(index).numPhrases);
end


fprintf(fid,'Usul\t# files\t# phrases\t\n\r');
for index=1:length(makamList)
    fprintf(fid,'%s\t%d\t%d\n\r',usulList(index).name,usulList(index).numFiles,usulList(index).numPhrases);
end
fclose(fid);


cd(currentDir);
end

function cumleSayisi=countPhrases(fileName,usulFile)
[NM, bolut] = symbtr2nmat(fileName,usulFile);
[bolut]=filterSegmentation(bolut);cumleSayisi=length(bolut)-1;
end