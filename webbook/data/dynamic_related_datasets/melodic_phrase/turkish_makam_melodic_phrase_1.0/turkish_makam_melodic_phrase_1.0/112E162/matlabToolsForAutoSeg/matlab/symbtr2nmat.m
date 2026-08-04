function [NM, bolut] = symbtr2nmat(fileName, usulFile)
%symbtr2nmat:   Converts SymbTr file to noteMatrix and segmentation matrices
%   filename:   Name and path of the SymbTr file (.txt)
%   NM:         Output in MIDI Toolbox notematrix format
%   bolut:      Segmentation information
%   usulFile:   Path & "usuller.txt" (Includes numerator (Zaman) and
%               denominator (Mertebe) information of all usuls).
%   Addendum:   Now process SymbTr files coming from Mus2, which includes
%               the word "Es" for rests.

u               = regexp(fileName, '--', 'split');
usulAdi         = u(3);
[~, mertebe]	= zaman_mertebeBul(usulAdi, usulFile);
[syn, gecki]    = readSymbTr(fileName);
[syn]           = computeCums(syn, mertebe);
[syn]           = removeRests(syn, mertebe);
[NM, bolut]     = extractInfo(syn, mertebe, gecki);
[bolut]         = beatCheck(NM, bolut);
end

function [syn, gecki] = readSymbTr(fileName)
gecki = '';
fid = fopen(fileName);
if fid > 0
    kayit = fgetl(fid); % Header line
    kayit = fgetl(fid); % First data line
    k = 0;
    while ischar(kayit)
        ktr = regexp(kayit, '\t', 'split');
        if length(ktr) < 12
            %disp(['Dosya i?erik hatas?: ' fileName ', Sat?r no: ' int2str(k)]);
        elseif ~strcmp(ktr(2),  '8')
            k = k + 1;
            syn(k, 1) = str2double(ktr(2));
            if ~strcmp(ktr(5),  '') syn(k, 2) = str2double(ktr(5));  end
            if ~strcmp(ktr(6),  '') syn(k, 3) = str2double(ktr(6));  end
            if ~strcmp(ktr(7),  '') syn(k, 4) = str2double(ktr(7));  end
            if ~strcmp(ktr(8),  '') syn(k, 5) = str2double(ktr(8));  end
            if ~strcmp(ktr(9),  '') syn(k, 6) = str2double(ktr(9));  end
            if ~strcmp(ktr(10), '') 
                syn(k, 7) = str2double(ktr(10)); 
                if syn(k, 7) == 101
                    syn(k, 7) = 100;
                end
            end
            if ~strcmp(ktr(11), '') syn(k, 8) = str2double(ktr(11)); end
            if syn(k, 1) == 54
                n = size(gecki, 2) + 1;
                gecki{n} = ktr{12};
            end
        end
        kayit = fgetl(fid); % Header line
    end
    fclose(fid);
    % Son sat?r 53 kodlu olmal?
    k = size(syn, 1);
    if syn(k, 1) ~= 53
        syn(k + 1, 1) = 53;
    end
else
    syn = [];
end
end

function [syn] = computeCums(syn, mertebe)
% K?m?latif ms ve beat'leri hesaplay?p diziye yazar
    gecMert = mertebe;
    syn(:,  9) = 0;
    syn(:, 10) = 0;
    for k = 2 : size(syn, 1)
        syn(k, 9) = syn(k - 1, 9) + syn(k - 1, 6);
        if syn(k - 1, 1) ~= 51 % Usul de?i?im noktalar?nda pay ve payda yeni usul?n zaman ve mertebesini g?steriyor
            if syn(k - 1, 5) ~= 0
                syn(k, 10) = syn(k - 1, 10) + gecMert * syn(k - 1, 4) / syn(k - 1, 5);
            else
                syn(k, 10) = syn(k - 1, 10);
            end
        else
            gecMert = syn(k - 1, 5); %syn(k, 5); idi!
            syn(k, 10) = syn(k - 1, 10);
        end
    end
end

function [syn] = removeRests(syn, ~)
    k = 2;
    while k <= size(syn, 1) - 1;
        if (syn(k, 2) < 0) || (syn(k, 3) < 0) % Rest
            if (51 <= syn(k - 1, 1) && syn(k - 1, 1) <= 55)
                syn = swapLines(syn, k);
                if k > 2
                    syn = combineRest(syn, k - 1);
                end
            else
                syn = combineRest(syn, k);
            end
        end
        k = k + 1;
    end
end

function [syn] = swapLines(syn, k)
% k. ile (k-1). sat?r?n yerlerini de?i?tirir
syn(size(syn, 1) + 1, :) = syn(k - 1, :);
syn(k - 1, :)            = syn(k, :);
syn(k, :)                = syn(size(syn, 1), :);
syn(size(syn, 1), :)     = [];
end

function [syn] = combineRest(syn, k)
% Bir ?nceki sat?r nota veya es ise, bu es'in de?erini ona ekle;
% cari sat?r? iptal et
onc = syn(k - 1, 4) / syn(k - 1, 5);
cri = syn(k, 4) / syn(k, 5);
lns = (onc * syn(k - 1, 7) + cri * syn(k, 7))  / (onc + cri);
syn(k - 1, 4) = onc + cri;
syn(k - 1, 5) = 1;
syn(k - 1, 7) = lns;
syn(k - 1, 6) = syn(k - 1, 6) + syn(k, 6);
syn(k, :) = [];
end

function [NM, bolut]= extractInfo(syn, mertebe, gecki)
    geckInd = 1;
    NM    = [];
    bolut = struct('kod', 0, 'beat', 0, 'ms', 0, 'aciklama', ' ');    
    bInd  = 0;
    nInd  = 0;
    for k = 1 : size(syn, 1) - 1
        if syn(k, 1) == 51
            mertebe = syn(k, 5);
        elseif syn(k, 1) == 53 || syn(k, 1) == 54 || syn(k, 1) == 55
            bInd = bInd + 1;
            bolut(bInd).kod      = syn(k, 1);
            bolut(bInd).beat     = round(2 * mertebe * syn(k + 1, 10)) / (2 * mertebe);        
            bolut(bInd).ms       = round(syn(k + 1, 9) / 500) / 2;
            if bolut(bInd).kod == 54
                bolut(bInd).aciklama = gecki(geckInd);
                geckInd = geckInd + 1;
            end
            if k < size(syn, 1) - 1
                if syn(k + 1, 3) == -1
                    bolut(bInd).ms   = syn(k + 2, 9) / 1000;
                    bolut(bInd).beat = round(2 * syn(k + 2, 10)) / 2;
                end
            end
        else
            nInd = nInd + 1;
            NM(nInd, 1) = syn(k, 10); %onsetBeat
            if syn(k, 5) ~= 0
                NM(nInd, 2) = mertebe * syn(k, 4) / syn(k, 5) * syn(k, 7) / 100; %beatDur
            else
                if nInd > 0
                    NM(nInd, 2) = NM(nInd - 1, 2); %beatDur
                else
                    NM(nInd, 2) = 0;
                end
            end
            if syn(k, 3) >= 0
                NM(nInd, 4) = syn(k, 3) * 12 / 53; %midiNo
            else
                NM(nInd, 4) = -1;% Sus
            end
            NM(nInd, 5) = syn(k, 8);
            NM(nInd, 6) = syn(k, 9) / 1000; % OnsetSec
            NM(nInd, 7) = syn(k, 6) * syn(k, 7) / 100000; %durSec
        end
    end
    bInd = bInd + 1;
    bolut(bInd).kod  = 53;
    bolut(bInd).beat = round(2 * mertebe * syn(end, 10)) / (2 * mertebe);
    bolut(bInd).ms   = round(syn(end, 9) / 500) / 2;
    NM(:, 3) = 1; %Chan
end

function [bolut] = beatCheck(NM, bolut)
% NM'de bulunmayan beat'leri d?zeltir
for k = 1 : length(bolut) - 1
    idx = find(NM >= bolut(k).beat, 1);
    if isempty(idx)
        idx = size(NM, 1);
    else
        while (idx < size(NM, 1) && NM(idx, 4) < 0)
            idx = idx + 1;
        end
    end
    if (idx <= size(NM, 1))
        bolut(k).beat = NM(idx, 1);
    else
        bolut(k).beat = NM(size(NM, 1), 1);
    end
end
end
