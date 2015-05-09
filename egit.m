function egit(giris1,giris2,giris3,cikis)
%----- NORONLAR
global noron1;
global noron2;
global noron3;
global noron4;
global noron5;
global noron6;
global noron7;

%----- DELTALAR
global delta7;
global delta6;
global delta5;
global delta4;

%----- DENDRIDLER
global dendrid41;global dendrid41d;
global dendrid42;
global dendrid43;
global dendrid4b;


global dendrid51;global dendrid51d;
global dendrid52;
global dendrid53;
global dendrid5b;global dendrid5bd;

global dendrid61;
global dendrid62;
global dendrid63;
global dendrid6b;

global dendrid76;
global dendrid75;
global dendrid74;
global dendrid7b;

%-----DEGISIMLER

global degisim41;
global degisim42;
global degisim43;
global degisim4b;


global degisim51;
global degisim52;
global degisim53;
global degisim5b;

global degisim61;
global degisim62;
global degisim63;
global degisim6b;

global degisim76;
global degisim75;
global degisim74;
global degisim7b;
%---------------



global ogrenmeKatsayisi;
global momentum;
%------------------------------------------------------global  son

cikisHesapla(giris1,giris2,giris3);

delta7=cikis-noron7;%+
delta7=delta7*(noron7*(1-noron7));%+

delta6=dendrid76*delta7;%+
delta6=delta6*(noron6*(1-noron6));%+

delta5=dendrid75*delta7;
delta5=delta5*noron5*(1-noron5);%+

delta4=dendrid74*delta7;%+
delta4=delta4*noron4*(1-noron4);%+







%-------------------------------DEG?S?MLER
degisim41=ogrenmeKatsayisi*delta4*noron1+momentum*degisim41;%+
dendrid41=dendrid41+degisim41;%+
dendrid41d=[dendrid41d;dendrid41];

degisim42=ogrenmeKatsayisi*delta4*noron2+momentum*degisim42;%+
dendrid42=dendrid42+degisim42;%+

degisim43=ogrenmeKatsayisi*delta4*noron3+momentum*degisim43;%+
dendrid43=dendrid43+degisim43;%+

degisim4b=ogrenmeKatsayisi*delta4*1+momentum*degisim4b;%+
dendrid4b=dendrid4b+degisim4b;%+
%---------------------------
degisim51=ogrenmeKatsayisi*delta5*noron1+momentum*degisim51;%+
dendrid51=dendrid51+degisim51;%+
dendrid51d=[dendrid51d;dendrid51];


degisim52=ogrenmeKatsayisi*delta5*noron2+momentum*degisim52;%+
dendrid52=dendrid52+degisim52;%+

degisim53=ogrenmeKatsayisi*delta5*noron3+(momentum*degisim53);%+
dendrid53=dendrid53+degisim53;%+

degisim5b=ogrenmeKatsayisi*delta5*1+momentum*degisim5b;%+
dendrid5b=dendrid5b+degisim5b;%+
dendrid5bd=[dendrid5bd;dendrid5b];
%----------------------------
degisim61=ogrenmeKatsayisi*delta6*noron1+momentum*degisim61;
dendrid61=dendrid61+degisim61;

degisim62=ogrenmeKatsayisi*delta6*noron2+momentum*degisim62;
dendrid62=dendrid62+degisim62;

degisim63=ogrenmeKatsayisi*delta6*noron3+momentum*degisim63;
dendrid63=dendrid63+degisim63;%+ burda sikinti vardi degisim61 yaziyordu


degisim6b=ogrenmeKatsayisi*delta6*1+momentum*degisim6b;%+
dendrid6b=dendrid6b+degisim6b;%+
%----------------------------
degisim76=ogrenmeKatsayisi*delta7*noron6+momentum*degisim76;%+
dendrid76=dendrid76+degisim76;%+

degisim75=ogrenmeKatsayisi*delta7*noron5+momentum*degisim75;%+
dendrid75=dendrid75+degisim75;%+

degisim74=ogrenmeKatsayisi*delta7*noron4+momentum*degisim74;%+
dendrid74=dendrid74+degisim74;%+

degisim7b=ogrenmeKatsayisi*delta7*1+momentum*degisim7b;%+
dendrid7b=dendrid7b+degisim7b;%+
end
