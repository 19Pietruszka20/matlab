I = imread('peppers3_512x512.bmp');
imshow(I);
figure;
x1 = imnoise(I,'salt & pepper', 0.01);
x2 = imnoise(I,'salt & pepper', 0.02);
x10 = imnoise(I,'salt & pepper', 0.10);
imshow(x1);
figure;
imshow(x2);
figure;
imshow(x10);
figure;
L1Image = x1;
L2Image2 = x1;
L1Imagex2 = x2;
L2Image2x2 = x2;
L1Imagex10 = x10;
L2Image2x10 = x10;

[rows,columns,kanal] = size(I);
promien_okna = 1;
rozmiar_okna = (2*promien_okna+1).^2;
for i = 1+promien_okna:rows-2
    for j = 1+promien_okna:columns-2
        vectors_set = reshape(L1Image(i-promien_okna:i+promien_okna,j-promien_okna:j+promien_okna,:),rozmiar_okna,1,kanal);
        vectors_set = reshape(permute(vectors_set,[2,3,1]),kanal,[])';
        [n, d] = size (vectors_set);
        dist = pdist(vectors_set,'cityblock');
        dist = squareform(dist);
        dist = sum(dist,2);
        indx = find(dist==min(dist));
        median_vec = vectors_set(indx,:);        
        L1Image(i,j,:)= median_vec(1,:);
        dist2 = pdist(vectors_set,'euclidean');
        dist2 = squareform(dist2);
        dist2 = sum(dist2,2);
        indx = find(dist2==min(dist2));
        median_vec = vectors_set(indx,:); 
        L2Image2(i,j,:)= median_vec(1,:);
    end
end

for i = 1+promien_okna:rows-2
    for j = 1+promien_okna:columns-2
        vectors_set = reshape(L1Imagex2(i-promien_okna:i+promien_okna,j-promien_okna:j+promien_okna,:),rozmiar_okna,1,kanal);
        vectors_set = reshape(permute(vectors_set,[2,3,1]),kanal,[])';
        [n, d] = size (vectors_set);
        dist = pdist(vectors_set,'cityblock');
        dist = squareform(dist);
        dist = sum(dist,2);
        indx = find(dist==min(dist));
        median_vec = vectors_set(indx,:);        
        L1Imagex2(i,j,:)= median_vec(1,:);
        dist2 = pdist(vectors_set,'euclidean');
        dist2 = squareform(dist2);
        dist2 = sum(dist2,2);
        indx = find(dist2==min(dist2));
        median_vec = vectors_set(indx,:); 
        L2Image2x2(i,j,:)= median_vec(1,:);
    end
end

for i = 1+promien_okna:rows-2
    for j = 1+promien_okna:columns-2
        vectors_set = reshape(L1Imagex10(i-promien_okna:i+promien_okna,j-promien_okna:j+promien_okna,:),rozmiar_okna,1,kanal);
        vectors_set = reshape(permute(vectors_set,[2,3,1]),kanal,[])';
        [n, d] = size (vectors_set);
        dist = pdist(vectors_set,'cityblock');
        dist = squareform(dist);
        dist = sum(dist,2);
        indx = find(dist==min(dist));
        median_vec = vectors_set(indx,:);        
        L1Imagex10(i,j,:)= median_vec(1,:);
        dist2 = pdist(vectors_set,'euclidean');
        dist2 = squareform(dist2);
        dist2 = sum(dist2,2);
        indx = find(dist2==min(dist2));
        median_vec = vectors_set(indx,:); 
        L2Image2x10(i,j,:)= median_vec(1,:);
    end
end

imshow(L1Image);
imwrite(L1Image,'L1Image.png');
figure;

imshow(L2Image2);
figure;
imwrite(L2Image2,'L2Image2.png');

imshow(L1Imagex2);
imwrite(L1Imagex2,'L1Imagex2.png');
figure;

imshow(L2Image2x2);
imwrite(L2Image2x2,'L2Image2x2.png');
figure;

imshow(L1Imagex10);
imwrite(L1Imagex10,'L1Imagex10.png');
figure;

imshow(L2Image2x10);
imwrite(L2Image2x10,'L2Image2x10.png');
