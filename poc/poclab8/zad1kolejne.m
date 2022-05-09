clear all;
clc;
I = imread('kulkigray.png');
IC=imcrop(I);

IC = imnoise(IC,'salt & pepper',0.02) 
imwrite(IC, 'obrazdooverleafa.png');
Size=1;
filtr=1;        %1-filtr medianowy, 2-modyfikacja LUM
k=1; 

rows = size(IC,1);
columns = size(IC,2);
Y=IC;

for i=(1+Size):(rows-Size)
 for j=(1+Size):(columns-Size)
 Minor = Y(i-Size:i+Size,j-Size:j+Size);
 Minor = Minor(:);      %rozbicie matrixu
 Rosnaco = sort(Minor);
 if (filtr==1)
     if(Size==1)
         Mediana = Rosnaco(5);%mediana
     end
     if(Size==2)
         Mediana = Rosnaco(13);
     end
     if(Size==3)
         Mediana = Rosnaco(25);
     end
 end
 if (filtr==2)
     if(Size==1)
        Rosnaco2=sort([Rosnaco(5-k) Minor(5) Rosnaco(5+k)]);
        Mediana = Rosnaco2(2); %modyfikacja filtru
     end
     if(Size==2)
        Rosnaco2=sort([Rosnaco(13-k) Minor(13) Rosnaco(13+k)]);
        Mediana = Rosnaco2(2); %modyfikacja filtru
     end
     if(Size==3)
        Rosnaco2=sort([Rosnaco(25-k) Minor(25) Rosnaco(25+k)]);
        Mediana = Rosnaco2(2); %modyfikacja filtru
     end
 end
 Y(i,j) = Mediana;
 end
end
Y1=Y;


figure;
imhist(Y1);
figure;
level=graythresh(Y1);
BI=progowanie(Y1,100);
imshow(BI);
imwrite(Y1, 'Iwyjscie.png');
[BIL,count]=bwlabel(BI);
RGB=label2rgb(BIL);
figure;
imshow(RGB);
%imwrite(RGB,'RGB.png');



function [wynik]=progowanie(IC, prog)
IC=double(IC);
[x,y]=size(IC);
wynik=zeros(x,y);

for i=1:x
    for j=1:y
        if((IC(i,j))<prog)
            wynik(i,j)=255;
        else
            wynik(i,j)=0;
        end
    end
end
end

