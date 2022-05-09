%Labki8
clear all;
clc;

Img=imread('clockA.png');

h1=fspecial('gaussian',3);
h2=[0 -1 -1; -1 8 -1; -1 -1 0];

K1=Img;
K2=Img;

for i=1:10
   K1=imfilter(K1, h1);
   K2=imfilter(K2, h2,'same');
   if(i==1 || i==2 || i==5 || i==10)
       imwrite(K1, ['lowpass' num2str(i), '.png']);
       W=fftshift(fft2(K1));
       imwrite(mat2gray(uint8(log(1+abs(W)))),['dolnoprzepustowy' num2str(i) 'widmo.png']);
   end
   if(i==1 || i==2 || i==3 || i==4)
       imwrite(K2, ['highpass' num2str(i), '.png']);
       W2=fftshift(fft2(K2));
       imwrite(mat2gray(uint8(log(1+abs(W2)))),['gornoprzepustowy' num2str(i) 'widmo.png']);
   end
    
end