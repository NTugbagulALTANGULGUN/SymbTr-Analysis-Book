function [Y,inp]=applyFLDmodel(PIECEDATA,FLDmodel)

inp=PIECEDATA.data(:,2:(end-1))*FLDmodel.w;
Y=(inp>=FLDmodel.TH);




