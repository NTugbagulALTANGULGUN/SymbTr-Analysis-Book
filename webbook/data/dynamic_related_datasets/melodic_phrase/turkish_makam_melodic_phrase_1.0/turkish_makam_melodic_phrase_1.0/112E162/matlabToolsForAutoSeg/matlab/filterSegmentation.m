function [yeniBolut]=filterSegmentation(bolut)
% ezgi sinirlari disindaki bolutleme bilgilerini atar
% throws away codes that are not 53 which signify melodic boundary
yeniBolut=bolut;
yeniBolut(1).kod=53;%eserin basina cumle siniri konma islemi/adding a boundary at the first onset
yeniBolut(1).beat=0;yeniBolut(1).ms=0;yeniBolut(1).aciklama={''};
m=2;
for k=1:length(bolut)
    if(bolut(k).kod==53 && ~isnan(bolut(k).beat))
        if(k>1)
            if(bolut(k-1).beat~=bolut(k).beat)
                yeniBolut(m)=bolut(k);
                yeniBolut(m).beat=round(yeniBolut(m).beat*16)/16; 
                m=m+1;
            end
        else
            yeniBolut(m)=bolut(k);
            yeniBolut(m).beat=round(yeniBolut(m).beat*16)/16;
            m=m+1;
        end
    end
end
yeniBolut=yeniBolut(1:m-1);

end