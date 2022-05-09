clear all;
clc;
I = imread('skarpetagray.png');
IC=imcrop(I);
IC = imnoise(IC,'salt & pepper',0.02) 

figure;
imhist(IC);
figure;
level=graythresh(IC);
BI=progowanie(IC,level);
imshow(BI);
%imwrite(I, 'Iwyjscie.png');
[BIL,count]=bwlabel(BI);
RGB=label2rgb(BIL);
figure;
imshow(RGB);
%imwrite(RGB,'RGB.png');



function [wynik]=progowanie(IC, prog)
IC=double(IC)/255;
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