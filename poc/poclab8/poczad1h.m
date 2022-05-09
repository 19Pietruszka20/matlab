clear all;
clc;
I = imread('kulki2gray.png');

figure;
imhist(I);
figure;
level=graythresh(I);
BI=progowanie(I,100);
imshow(BI);
%imwrite(I, 'Iwyjscie.png');
BIL=bwlabel(BI);
RGB=label2rgb(BIL);
figure;
imshow(RGB);
%imwrite(RGB,'RGB.png');



function [wynik]=progowanie(I, prog)
I=double(I);
[x,y]=size(I);
wynik=zeros(x,y);

for i=1:x
    for j=1:y
        if((I(i,j))<prog)
            wynik(i,j)=255;
        else
            wynik(i,j)=0;
        end
    end
end
end