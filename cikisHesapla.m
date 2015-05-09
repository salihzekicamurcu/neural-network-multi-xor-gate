function sonuc= cikisHesapla(giris1,giris2,giris3)
global noron1;
global noron2;
global noron3;
global noron4;
global noron5;
global noron6;
global noron7;
global dendrid41;
global dendrid42;
global dendrid43;

global dendrid51;
global dendrid52;
global dendrid53;

global dendrid61;
global dendrid62;
global dendrid63;

global dendrid76;
global dendrid75;
global dendrid74;

global dendrid4b;
global dendrid5b;
global dendrid6b;
global dendrid7b;



noron1=giris1;%+
noron2=giris2;%+
noron3=giris3;%+

noron4=aktivasyon((noron1*dendrid41)+(noron2*dendrid42)+(noron3*dendrid43)+(1*dendrid4b));%+

noron5=aktivasyon((noron1*dendrid51)+(noron2*dendrid52)+(noron3*dendrid53)+(1*dendrid5b));%+

noron6=aktivasyon((noron1*dendrid61)+(noron2*dendrid62)+(noron3*dendrid63)+(1*dendrid6b));%+

noron7=aktivasyon((noron4*dendrid74)+(noron5*dendrid75)+(noron6*dendrid76)+(1*dendrid7b));%+
sonuc=noron7;%+
end




















