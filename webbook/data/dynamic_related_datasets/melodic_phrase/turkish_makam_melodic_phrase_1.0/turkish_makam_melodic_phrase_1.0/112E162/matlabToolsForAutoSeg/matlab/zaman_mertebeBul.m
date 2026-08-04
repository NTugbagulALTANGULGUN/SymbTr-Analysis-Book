function [zaman mertebe] = zaman_mertebeBul(usulAdi, usulFile)
% Usulün adindan hareketle zaman ve mertebesini bulur.
% Dosyada usulü bulamazsa 4/4 (Sofyan) kabul eder
%   usulAdi:   'aksak', 'duyek' vb.
%   usulFile:  Girilmezse asagidaki yol\dosya kabul edilir;

if (nargin == 1) || (strcmp(usulFile, ''))
    usulFile = 'C:\Users\KEMAL\Documents\MATLAB\Data\usuller.txt';
end

%Default
zaman   = 4;
mertebe = 4;

tm = 0;
fid = fopen(usulFile);

if fid == -1
    usulFile = 'C:\Users\KEMAL\Documents\MATLAB\Data\usuller.txt';
    fid = fopen(usulFile);
    if fid == -1
        disp('usuller.txt dosyasi açilamadi')
    else
        tm = 1;
    end
else
    tm = 1;
end

if tm
    ok = 0;
    while ok == 0 && ~feof(fid)
        kayit = fgetl(fid);
        s = regexp(kayit, '\t', 'split');
        if strcmp(s(1), usulAdi)
            zaman = str2double(s(3));
            mertebe = 2^str2double(s(4));
            ok = 1;
        end
    end;
    if ok == 0
        disp([usulAdi ' usulu bulunamadi'])
    end
end

fclose(fid);

end
