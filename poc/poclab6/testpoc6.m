clear all;
clc;

Img = imread('peppers2_512x512.bmp');

rows = size(Img,1);
columns = size(Img,2);

x1=imnoise(Img,'salt & pepper',0.01);
x2=imnoise(Img,'salt & pepper',0.03);
x10=imnoise(Img,'salt & pepper',0.15);

xg=imnoise(Img, 'gaussian',0.01,0.01);
xg10=imnoise(Img, 'gaussian',0.01,0.10);
xg20=imnoise(Img, 'gaussian',0.01,0.20);
xg30=imnoise(Img, 'gaussian',0.01,0.30);

pomieszany=imnoise(Img, 'gaussian',0.01,0.01)+imnoise(Img,'salt & pepper',0.01);
pomieszany1=imnoise(Img, 'gaussian',0.01,0.10)+imnoise(Img,'salt & pepper',0.03);
pomieszany2=imnoise(Img, 'gaussian',0.01,0.20)+imnoise(Img,'salt & pepper',0.15);
pomieszany3=imnoise(Img, 'gaussian',0.01,0.30)+imnoise(Img,'salt & pepper',0.20);
%imshow(pomieszany);
imwrite(xg,'xg.png');
imwrite(xg10,'xg10.png');
imwrite(xg20,'xg20.png');
imwrite(xg30,'xg30.png');

imwrite(pomieszany,'pomieszany.png');
imwrite(pomieszany1,'pomieszany1.png');
imwrite(pomieszany2,'pomieszany2.png');
imwrite(pomieszany3,'pomieszany3.png');

ImgR=[Img(250:400,250:400,:),x1(250:400,250:400,:),x2(250:400,250:400,:),x10(250:400,250:400,:)];
ImgL=imresize(ImgR,3,"nearest");
imwrite(ImgL,'szumzad1SP.png');

szum1=x1(250:400,250:400,:);
szum2=x2(250:400,250:400,:);
szum10=x10(250:400,250:400,:);
ImgLargeS=imresize(szum1,3,"nearest");
imwrite(ImgLargeS,'szumik11.png');
ImgLarge1S=imresize(szum2,3,"nearest");
imwrite(ImgLarge1S,'szumik32.png');
ImgLarge2S=imresize(szum10,3,"nearest");
imwrite(ImgLarge2S,'szumik10.png');

%========================================================%
Size=1;
filtr=1;        %1-filtr medianowy, 2-modyfikacja LUM
k=1;            %parametr k filtru LUM
%========================================================%

Y = x1;
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

Y = x2;
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
Y2=Y;

Y = x10;
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
Y10=Y;

ImgR=[Img(250:400,250:400,:),Y1(250:400,250:400,:),Y2(250:400,250:400,:),Y10(250:400,250:400,:)];
ImgL=imresize(ImgR,3,"nearest");
imwrite(ImgL,'wynikzad1LUMPK.png');

if(filtr==1)
mediana1=Y1(250:400,250:400,:);
mediana2=Y2(250:400,250:400,:);
mediana10=Y10(250:400,250:400,:);
Obraz=Img(250:400,250:400,:);
ImgLargeO=imresize(Obraz,3,"nearest");
imwrite(ImgLargeO,'Obrazek.png');
ImgLarge=imresize(mediana1,3,"nearest");
imwrite(ImgLarge,'mediana1.png');
ImgLarge1=imresize(mediana2,3,"nearest");
imwrite(ImgLarge1,'mediana2.png');
ImgLarge2=imresize(mediana10,3,"nearest");
imwrite(ImgLarge2,'mediana10.png');
end

if(filtr==2)
lum1=Y1(250:400,250:400,:);
lum2=Y2(250:400,250:400,:);
lum10=Y10(250:400,250:400,:);
Obraz=Img(250:400,250:400,:);
ImgLarge=imresize(lum1,3,"nearest");
imwrite(ImgLarge,'lum1.png');
ImgLarge1=imresize(lum2,3,"nearest");
imwrite(ImgLarge1,'lum2.png');
ImgLarge2=imresize(lum10,3,"nearest");
imwrite(ImgLarge2,'lum10.png');
end