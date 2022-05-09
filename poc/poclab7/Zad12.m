%Labki7

Img=imread('trojkatS.png');
ImgK=imread('kolkoS.png');
ImgL=imread('linieS.png');


for ang=1:30:90
newimg=imrotate(Img,ang,'crop');
newimgL=imrotate(ImgL,ang,'crop');
%imshow(newimg);
imwrite(newimg,['rotacja' num2str(ang) '.png'])
imwrite(newimgL,['rotacjaLiniami' num2str(ang) '.png'])
%figure;
W=fftshift(fft2(newimg));
WL=fftshift(fft2(newimgL));
%imshow(angle(W),[]);
imwrite([angle(W),[]],['angle' num2str(ang) '.png']);
imwrite([angle(WL),[]],['angleLinie' num2str(ang) '.png']);
%figure;
%imshow(log(1+abs(WL)),[]);
%figure;
end

translate=[0 1];
for i=1:35:100
newimgT=imtranslate(Img,translate*i);
%imshow(newimgT);
imwrite(newimgT,['translacja' num2str(i) '.png'])
%figure;
W2=fftshift(fft2(newimgT));
imwrite([angle(W2),[]],['faza' num2str(i) '.png']);
%imshow(angle(W2),[]);
%figure;
%imshow(log(1+abs(W2)),[]);
%figure;
end


for re=1:2:5
newimgR=imresize(ImgK,re);
%imshow(newimgT);
imwrite(newimgR,['resize' num2str(re) '.png'])
%figure;
W3=fftshift(fft2(newimgR));
imwrite([angle(W3),[]],['fazaresize' num2str(re) '.png']);
%imshow(angle(W2),[]);
%figure;
%imshow(log(1+abs(W3)),[]);
%figure;
end


a=10*[1 -1 2 -4000];
b=5* [1 1 4 2];
%suptitle('Sinus');
j=0;
for i=1:4
for u = 1:512
for v=1:512
a1(u,v)=uint8(127+128*sin(u/a(i)+v/b(i)));
end
end
imwrite(a1,[ 'sin_a' num2str(a(i)) 'b' num2str(b(i)) 'sinusy.png']);
end