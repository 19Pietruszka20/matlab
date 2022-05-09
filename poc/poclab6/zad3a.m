I=imread("peppers3_512x512.bmp");

imshow(I);
figure;

x1=imnoise(I,'salt & pepper',0.01);
x2=imnoise(I,'salt & pepper',0.02);
x10=imnoise(I,'salt & pepper',0.10);
imshow(x1);
figure;
imshow(x2);
figure;
imshow(x10);
figure;
[rows,columns,kanal] = size(I);
promien_okna = 1;
rozmiar_okna = (2*promien_okna+1).^2;

Y=x1;
for i=(1+promien_okna):(rows-promien_okna)
    for j=(1+promien_okna):(columns-promien_okna)
    vectors_set_R = reshape(Y(i-promien_okna:i+promien_okna,j-promien_okna:j+promien_okna,1),rozmiar_okna,1,1);
    vectors_set_G = reshape(Y(i-promien_okna:i+promien_okna,j-promien_okna:j+promien_okna,2),rozmiar_okna,1,1);
    vectors_set_B = reshape(Y(i-promien_okna:i+promien_okna,j-promien_okna:j+promien_okna,3),rozmiar_okna,1,1);
    vec_R=median(vectors_set_R);
    vec_G=median(vectors_set_G);
    vec_B=median(vectors_set_B);
    vec=[vec_R vec_G vec_B];
    Y(i,j,:) = vec;
        end
end

Y2=x2;
for i=(1+promien_okna):(rows-promien_okna)
    for j=(1+promien_okna):(columns-promien_okna)
     vectors_set_R = reshape(Y(i-promien_okna:i+promien_okna,j-promien_okna:j+promien_okna,1),rozmiar_okna,1,1);
    vectors_set_G = reshape(Y(i-promien_okna:i+promien_okna,j-promien_okna:j+promien_okna,2),rozmiar_okna,1,1);
    vectors_set_B = reshape(Y(i-promien_okna:i+promien_okna,j-promien_okna:j+promien_okna,3),rozmiar_okna,1,1);
    vec_R=median(vectors_set_R);
    vec_G=median(vectors_set_G);
    vec_B=median(vectors_set_B);
    vec=[vec_R vec_G vec_B];
    Y2(i,j,:) = vec;
        end
end

Y10=x10;
for i=(1+promien_okna):(rows-promien_okna)
    for j=(1+promien_okna):(columns-promien_okna)
     vectors_set_R = reshape(Y(i-promien_okna:i+promien_okna,j-promien_okna:j+promien_okna,1),rozmiar_okna,1,1);
    vectors_set_G = reshape(Y(i-promien_okna:i+promien_okna,j-promien_okna:j+promien_okna,2),rozmiar_okna,1,1);
    vectors_set_B = reshape(Y(i-promien_okna:i+promien_okna,j-promien_okna:j+promien_okna,3),rozmiar_okna,1,1);
    vec_R=median(vectors_set_R);
    vec_G=median(vectors_set_G);
    vec_B=median(vectors_set_B);
    vec=[vec_R vec_G vec_B];
    Y10(i,j,:) = vec;
        end
end

imwrite(x1,'x1szum.png');
imwrite(x2,'x2szum.png');
imwrite(x10,'x3szum.png');

imshow(Y);
imwrite(Y,'YImage.png');
figure;
imshow(Y2);
imwrite(Y2,'Y2Image.png');
figure;
imshow(Y10);
imwrite(Y10,'Y10Image.png');
