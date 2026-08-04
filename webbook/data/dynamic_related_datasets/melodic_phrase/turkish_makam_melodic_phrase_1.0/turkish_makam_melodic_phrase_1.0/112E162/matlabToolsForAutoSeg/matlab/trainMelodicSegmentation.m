function [FLDmodel]=trainMelodicSegmentation(DDIR)
% this codes performs a sample run for the dveeloped melodic segmentation algorithm
% that identifies the notes on phrase boundaries ..

% loading the piece data:
[PIECEDATA,DATA,FILEINDS]=loadPieceData(DDIR);

% generating the classifier model:
FLDmodel=generateFLDmodel(PIECEDATA(2:end));

% applying the classifier model:
Yhat=applyFLDmodel(PIECEDATA(1),FLDmodel);

% computing the confusion matrix:
Ytrue=PIECEDATA(1).data(:,end);
cI0=find(Ytrue==0);
cI1=find(Ytrue==1);
CM=[sum(Yhat(cI0)==0) sum(Yhat(cI0)==1); sum(Yhat(cI1)==0) sum(Yhat(cI1)==1)];

Sensitivity=CM(2,2)/sum(CM(2,:));
Specificity=CM(1,1)/sum(CM(1,:));
Precision=CM(2,2)/sum(CM(:,2));
Fmeasure=2*Sensitivity*Precision/(Sensitivity+Precision);


% to do this in a leave-one-out franework for each piece:
INLIST=unique(FILEINDS);

clear RESULTS;
FULLCM=zeros(2,2);
for i=1:length(INLIST)
    Ytrue=PIECEDATA(INLIST(i)).data(:,end);
    RESULTS(i).Ytrue=Ytrue;
    
    FLDmodel=generateFLDmodel(PIECEDATA(setdiff(INLIST,INLIST(i))));
    RESULTS(i).model=FLDmodel;
    
    [Yhat,inp]=applyFLDmodel(PIECEDATA(INLIST(i)),FLDmodel);
    RESULTS(i).Yhat=Yhat;
    
    % computing the confusion matrix:
    cI0=find(Ytrue==0);
    cI1=find(Ytrue==1);
    CM=[sum(Yhat(cI0)==0) sum(Yhat(cI0)==1); sum(Yhat(cI1)==0) sum(Yhat(cI1)==1)];
    RESULTS(i).CM=CM;
    FULLCM=FULLCM+CM;
    
    RESULTS(i).Sensitivity=CM(2,2)/sum(CM(2,:));
    RESULTS(i).Specificity=CM(1,1)/sum(CM(1,:));
    RESULTS(i).Precision=CM(2,2)/sum(CM(:,2));
    RESULTS(i).Fmeasure=2*RESULTS(i).Sensitivity*RESULTS(i).Precision/(RESULTS(i).Sensitivity+RESULTS(i).Precision);
    
    % computing the ROC:
    [cPD,cPFA,cAUC]=ComputeROC(inp,Ytrue);
    RESULTS(i).PD=cPD;
    RESULTS(i).PFA=cPFA;
    RESULTS(i).AUC=cAUC;
end

% the overall statistics:
Sensitivity=FULLCM(2,2)/sum(FULLCM(2,:));
Specificity=FULLCM(1,1)/sum(FULLCM(1,:));
Precision=FULLCM(2,2)/sum(FULLCM(:,2));
Fmeasure=2*Sensitivity*Precision/(Sensitivity+Precision);

% compute the average ROC curve ..
CPFA=[.0001 .001 .01:.01:.99];
APD=zeros(1,length(CPFA));
for i=1:length(INLIST)
    APD=APD+ResampleROC(RESULTS(i).PFA,RESULTS(i).PD,CPFA)/length(INLIST);
end

figure(1)
clf
plot(CPFA,APD)
axis equal;
axis([0 1 0 1]);
title(sprintf('The average ROC curve; AUC is %.4f',0.5*sum(([CPFA 1]-[0 CPFA]).*([APD 1]+[0 APD]))));
xlabel('P_{FA}');
ylabel('P_{D}');
grid on


