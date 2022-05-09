%Labki7

Img=imread('trojkatS.png');

for ang=1:15:90
newimg=imrotate(Img,ang,'crop');
imshow(newimg);
imwrite(newimg,['rotacja' num2str(ang) '.png'])
figure;
W=fftshift(fft2(newimg));
imshow(angle(W),[]);
imwrite([angle(W),[]],['test' num2str(ang) '.png']);
figure;
imshow(log(1+abs(W)),[]);
%imwrite([log(1+abs(W)),[]],['gwiazda' num2str(ang) '.png']);
figure;
end

translate=[0 1];
for i=1:20:100
newimgT=imtranslate(Img,translate*i);
%imshow(newimgT);
%figure;
W2=fftshift(fft2(newimgT));
%imshow(angle(W2),[]);
%figure;
%imshow(log(1+abs(W2)),[]);
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