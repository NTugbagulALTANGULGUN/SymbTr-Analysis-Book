function [PIECEDATA,DATA,FILEINDs,OUTLIST]=loadPieceData(DDIR)

%MAC or linux ---------
if (DDIR(end)=='/')
    [stat,res]=system(['ls -1 ' DDIR '*--*.ptxt']);
else
    [stat,res]=system(['ls -1 ' DDIR '/*--*.ptxt']);
end
%Windows --------------
% files=dir([DDIR '\*.ptxt']);res=[];
% for k=1:length(files)
%     res=[res fullfile(DDIR,files(k).name) char(10)];
% end
%----------------------

I=find(res==10);
% clear PIECEDATA;
PIECEDATA(length(I))=struct('filename','','fileind',0,'data',[]);
bind=1;
for i=1:length(I)
    PIECEDATA(i).filename=res(bind:(I(i)-1));
    PIECEDATA(i).fileind=i;
    PIECEDATA(i).data=load(PIECEDATA(i).filename,'ascii');
    PIECEDATA(i).N=size(PIECEDATA(i).data,1);
    bind=I(i)+1;
end

N=sum([PIECEDATA(:).N]);
FILEINDs=zeros(N,1);
DATA=zeros(N,size(PIECEDATA(1).data,2));
bind=1;
for i=1:length(PIECEDATA)
    eind=bind+size(PIECEDATA(i).data,1)-1;
    FILEINDs(bind:eind)=PIECEDATA(i).fileind;
    DATA(bind:eind,:)=PIECEDATA(i).data;
    bind=eind+1;
end

% first, eliminate the piece data containing NaN features ..
FI=2:(size(DATA,2)-1);
d=length(FI);
OUTLIST=[];
for j=1:d
    OUTLIST=union(OUTLIST,unique(FILEINDs(find(isnan(DATA(:,FI(j)))))));
end
if (length(OUTLIST)>0)
    IIN=find(sum(repmat(FILEINDs,1,length(OUTLIST))-repmat(OUTLIST',N,1)==0,2)==0);
    NIIN=length(IIN);
else
    IIN=1:N;
    NIIN=N;
end

DATA=DATA(IIN,:);
FILEINDs=FILEINDs(IIN);

