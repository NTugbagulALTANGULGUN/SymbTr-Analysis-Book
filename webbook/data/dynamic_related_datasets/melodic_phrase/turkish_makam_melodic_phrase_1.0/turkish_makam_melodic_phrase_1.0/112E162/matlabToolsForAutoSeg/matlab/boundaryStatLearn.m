function boundaryStatLearn( folderName , noteTableFile, usulFile)
% 'folderName' isimli klasorde bulunan verilerden ezgi sinirlarinin
% dagilimlarini hesaplar. ("birini disarida birak" yontemi koddan cikarildi)

% This function computes the melodic boundary distributions from the data
% in 'folderName'

%klasordeki makam ve usuller listesi cikar
%create a list of makams and usuls and the number of pieces, phrases, etc.
[makamList,usulList]=createListOfMakamsUsuls( folderName , usulFile);

if(isempty(noteTableFile))
    noteTableFile='/Users/barisbozkurt/Documents/MAKAM_DATA/makam_hsts/noteTable.txt';
end
if(isempty(usulFile))
    usulFile='/Users/barisbozkurt/Documents/MAKAM_DATA/segmentation/usuller.txt';
end

%nota isimlerinin ve midiNo'larin okunmasi--------
[n1,n2,p1,p2,midiNo,midiNoAE]=textread(noteTableFile,'%s%s%d%d%f%f');
midiNo=round(midiNo*100);
%-------------------------------------------------

currentDir=pwd;
cd(folderName);
files=dir('*.txt');

[makamHist]=initializeMakamStruct(makamList,midiNo);
[usulHist]=initializeUsulStruct(usulList,usulFile);

for k=1:length(files)
    s = regexp(files(k).name, '--', 'split');
    
    makam=s(1);
    usul=s(3);
    % ---- verinin okundugu adim ----
    %reading note matrix and boundary information from file
    %NM carries the note events in the standard format of MidiToolbox, 
    %'bolut' carries the melodic boundaries in beats and milisecs
    [NM, bolut] = symbtr2nmat(files(k).name,usulFile);
    [bolut]=filterSegmentation(bolut);
    [NM]=filterNoteMatrix(NM);
    
    %finding makam and usul index / makam ve usul indeksini bul
    for makamInd=1:length(makamList)
        if(strcmp(makamList(makamInd).name,makam)), break; end
    end
    for usulInd=1:length(usulList)
        if(strcmp(usulList(usulInd).name,usul)), break; end
    end
    
    
    %Parcanin verilerini ilgili makam'in dagilimlarina ekle
    %Adding note counts for the piece to makam-note distributions
    [makamHist]=add2allNotesHist(midiNo,NM,makamHist,makamInd);
    
    %Bolut sinirlarindaki notalarin sayilmasi
    %Counting boundary notes
    oncekiSatirNo=1;
    for m=2:length(bolut)
        satirNo=find(NM(:,1)==bolut(m).beat);
        if(isempty(satirNo))
            if(m==length(bolut))%en sonda bulunan cumle siniri icin denk gelen beat olmayabiliyor, siniri en sona esle
                satirNo=length(NM(:,1))+1;
            else%bolut siniri hic bir satir beat'ine eslenemediyse en yakindakini bul ve sonraki ilk satira esle
                ind=find(NM(:,1) > bolut(m).beat);
                if(isempty(ind))
                    satirNo=length(NM(:,1))+1;
                else
                    satirNo=ind(1);
                end
                
            end
        end
        if(oncekiSatirNo>length(NM) || (satirNo-1)>length(NM))
            %disp(['---Bolut degeri sinirlari asiyor : ' files(k).name]);
        else
            %cumlenin ilk nota bilgisi ile histogramlari degistir
            %ilkNotaHist: starting note histogram
            ind=find(midiNo==round(NM(oncekiSatirNo,4)*100));
            makamHist(makamInd).ilkNotaHist.sure(ind)=makamHist(makamInd).ilkNotaHist.sure(ind)+NM(oncekiSatirNo,7);
            makamHist(makamInd).ilkNotaHist.sayi(ind)=makamHist(makamInd).ilkNotaHist.sayi(ind)+1;
            
            %---------------------
            %cumlenin son nota bilgisi ile histogramlari degistir
            %sonNotaHist: ending note histogram
            ind=find(midiNo==round(NM(satirNo-1,4)*100));
            makamHist(makamInd).sonNotaHist.sure(ind)=makamHist(makamInd).sonNotaHist.sure(ind)+NM(satirNo-1,7);
            makamHist(makamInd).sonNotaHist.sayi(ind)=makamHist(makamInd).sonNotaHist.sayi(ind)+1;
            
            %error check
            if(sum(makamHist(makamInd).genelHist.sayi<makamHist(makamInd).ilkNotaHist.sayi)>0 || sum(makamHist(makamInd).genelHist.sayi<makamHist(makamInd).sonNotaHist.sayi)>0)
                disp('--------------------sinirdaki nota sayisi toplam nota sayisini asmis gorunuyor');
            end
            oncekiSatirNo=satirNo;
        end
    end
    %-----------------------------------------------

    %Usul'e dair dagilimlara ekleme islemi--------------
    % bolutlerin denk geldigi beat histogrami hesabi
    % Computation of the boundary distribution with respect to usul beats
    for bind = 1 : length(bolut)
        if bolut(bind).ms ~= 0
            % The shortest note can be 1/64, triole => 3 * 64 = 192
            %                    n = 1 + floor(mod(192 * seg(k), zaman));
            n = 1 + floor(mod(bolut(bind).beat*2, usulHist(usulInd).zamanMertebe(1)*2));
            usulHist(usulInd).segInUsulHisto(1, n) = usulHist(usulInd).segInUsulHisto(1, n) + 1;
        end
    end
    
end
outFile=fullfile(folderName,'makamUsulBoundDist.mat');
save(outFile,'usulHist','makamHist','midiNo');
cd(currentDir);
end


function [makamHist]=initializeMakamStruct(makamList,midiNo)

makamHist=makamList;
makamNoteHist=zeros(1,length(midiNo));
for k=1:length(makamList)
    makamHist(k).genelHist.sure=makamNoteHist;
    makamHist(k).genelHist.sayi=makamNoteHist;
    makamHist(k).ilkNotaHist.sure=makamNoteHist;
    makamHist(k).ilkNotaHist.sayi=makamNoteHist;
    makamHist(k).sonNotaHist.sure=makamNoteHist;
    makamHist(k).sonNotaHist.sayi=makamNoteHist;
end
end


function [makamHist]=add2allNotesHist(midiNo,NM,makamHist,makamInd)
for k=1:size(NM,1)
    ind=find(midiNo==round(NM(k,4)*100));
    if(isempty(ind))
        disp(['Note not found:' num2str(round(NM(k,4)*100))]);
    end
    makamHist(makamInd).genelHist.sure(ind)=makamHist(makamInd).genelHist.sure(ind)+NM(k,7);
    makamHist(makamInd).genelHist.sayi(ind)=makamHist(makamInd).genelHist.sayi(ind)+1;
end
end

function [usulHist]=initializeUsulStruct(usulList,usulFile)

usulHist=usulList;
for k=1:length(usulList)
    [zaman mertebe] = zaman_mertebeBul(usulList(k).name, usulFile);
    usulHist(k).zamanMertebe=[zaman mertebe];
    usulHist(k).segInUsulHisto = zeros(1, zaman*2);%cuzunurluk: yarim vurus/resolution: zaman*2
end
end

