function autoMelodicSegmentation(TESTDDIR, FLDmodel)
%Performs automatic melodic segmentation using the FLDmodel

[TESTPIECEDATA,TESTDATA,FILEINDS]=loadPieceData(TESTDDIR);
 
% applying the classifier model:
Ypred=cell(length(TESTPIECEDATA),1);
for i=1:length(TESTPIECEDATA)
    Ypred{i}=applyFLDmodel(TESTPIECEDATA(i),FLDmodel);
end
%printing to files
for k=1:length(TESTPIECEDATA)
    fileName=strrep(TESTPIECEDATA(k).filename,'.ptxt','.autoSeg');
    fid=fopen(fileName,'w+t');
    fprintf(fid,'Boundary(first note onset) in beats:\r\n');
    segDecision=Ypred{k};
    for m=1:TESTPIECEDATA(k).N
        if(segDecision(m))
            fprintf(fid,'%4.4f\r\n',TESTPIECEDATA(k).data(m,1));
        end
    end
    fclose(fid);
end
