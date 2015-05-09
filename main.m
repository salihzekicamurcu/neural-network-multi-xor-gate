clear;
display('ag kuruluyor....');
global noron1;noron1=0;
global noron2;noron2=0;
global noron3;noron3=0;
global noron4;noron4=0;
global noron5;noron5=0;
global noron6;noron6=0;
global noron7;noron7=0;
%-------------------------------------------------------------------------
global delta7;delta7=0;
global delta6;delta6=0;
global delta5;delta5=0;
global delta4;delta4=0;
%--------------------------------------------------------------------------
global dendrid41;dendrid41=rand();global dendrid41d;dendrid41d=[];
global dendrid42;dendrid42=rand();
global dendrid43;dendrid43=rand();

global dendrid51;dendrid51=rand();global dendrid51d;dendrid51d=[];
global dendrid52;dendrid52=rand();
global dendrid53;dendrid53=rand();

global dendrid61;dendrid61=rand();
global dendrid62;dendrid62=rand();
global dendrid63;dendrid63=rand();

global dendrid76;dendrid76=rand();
global dendrid75;dendrid75=rand();
global dendrid74;dendrid74=rand();

global dendrid4b;dendrid4b=rand();
global dendrid5b;dendrid5b=rand();global dendrid5bd;dendrid5bd=[];
global dendrid6b;dendrid6b=rand();
global dendrid7b;dendrid7b=rand();
%--------------------------------
global degisim41;degisim41=0;
global degisim42;degisim42=0;
global degisim43;degisim43=0;

global degisim51;degisim51=0;
global degisim52;degisim52=0;
global degisim53;degisim53=0;

global degisim61;degisim61=0;
global degisim62;degisim62=0;
global degisim63;degisim63=0;

global degisim76;degisim76=0;
global degisim75;degisim75=0;
global degisim74;degisim74=0;

global degisim4b;degisim4b=0;
global degisim5b;degisim5b=0;
global degisim6b;degisim6b=0;
global degisim7b;degisim7b=0;
%---------------
global ogrenmeKatsayisi;ogrenmeKatsayisi=0.9;
global momentum;momentum=0.5;
%-----------------------------------------------
% ag kurulum sonu
%-----------Main
k1=[];
k2=[];
k3=[];
k4=[];
k5=[];
k6=[];
k7=[];
k8=[];
close all;
display('ag egitiliyor....');
for i=1:4000
    egit(0,0,0,0);k1=[k1;karelerOrtalamasi(0)];
    egit(0,0,1,1);k2=[k2;karelerOrtalamasi(1)];
    egit(0,1,0,1);k3=[k3;karelerOrtalamasi(1)];
    egit(0,1,1,0);k4=[k4;karelerOrtalamasi(0)];
   % display(i);
end
figure;

subplot(2,4,1);
plot(k1(:),'b.-');xlabel('0,0:0');grid on;
subplot(2,4,2);
plot(k2(:),'b.-');xlabel('0,1:1');grid on;
subplot(2,4,3);
plot(k3(:),'b.-');xlabel('1,0:1');grid on;
subplot(2,4,4);
plot(k4(:),'b.-');xlabel('1,1:0');grid on; 
fprintf('+--------SONUCLAR-----------+\n');
fprintf('G1\tG2\tSonuc\tAg Sonucu\n');
    for j=0:1
        for k=0:1
            i=0;
            beklenen=xor(i,j);
            beklenen=xor(beklenen,k);
        deneme=cikisHesapla(i,j,k);
        fprintf('%d\t%d:\t%d\t\t%1.2f\n',j,k,beklenen,deneme);
        
        end
    end
fprintf('+--------SONUCLAR-----------+\n');
%figure;
%subplot(1,3,1);
%plot(dendrid41d);xlabel('degisim41');grid on;
%subplot(1,3,2);
%plot(dendrid51d);xlabel('degisim51');grid on;
%subplot(1,3,3);
%plot(dendrid5bd);xlabel('degisim5b');grid on;
fprintf('%1.4f,%1.4f,%1.4f,%1.4f\n',dendrid41,dendrid42,dendrid43,dendrid4b);
fprintf('%1.4f,%1.4f,%1.4f,%1.4f\n',dendrid51,dendrid52,dendrid53,dendrid5b);
fprintf('%1.4f,%1.4f,%1.4f,%1.4f\n',dendrid61,dendrid62,dendrid63,dendrid6b);
fprintf('%1.4f,%1.4f,%1.4f,%1.4f\n',dendrid76,dendrid75,dendrid74,dendrid4b);










