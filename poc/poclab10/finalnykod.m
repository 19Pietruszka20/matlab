I1 = imread('z1.jpg');
I2=imread("z2.jpg");
I3=imread("z3.jpg");
I4=imread("z4.jpg");

I1=rgb2gray(I1);
I2=rgb2gray(I2);
I3=rgb2gray(I3);
I4=rgb2gray(I4);


%imhist(I1);
%figure;
  %  for i=1:747
 %   for j=1:739
%if I1(i,j)<255 & I1(i,j)>240
%    idx=find(I1(i,j))
%end
 %   end 
 %   end
 %   h=ismember(I1,idx);


bw1 = im2bw(I1, 0.9);
bw2 = im2bw(I2, 0.95);
bw3 = im2bw(I3, 0.9);
bw4 = im2bw(I4, 0.9);

bw3_1=bw3(:,1:305);
bw3_2=bw3(:,306:610);
bw3_3=bw3(:,611:915);

stats1 = [regionprops(bw1); regionprops(not(bw1))]
stats2 = [regionprops(bw2); regionprops(not(bw2))]
stats3 = [regionprops(bw3); regionprops(not(bw3))]
stats4 = [regionprops(bw4); regionprops(not(bw4))]
imshow(bw1);
hold on;
bwW = imcomplement(bw1);
rp=regionprops(double(bwW), 'all');
xy=rp.ConvexHull;
line(xy(:,1),xy(:,2), 'Color','yellow', 'LineWidth',2);
[r,c]=size(bwW);
mask=poly2mask(xy(:,1),xy(:,2),r,c);
maskEroded=imerode(mask, ones(30));
rp=regionprops(double(maskEroded), 'all');
xy=rp.ConvexHull;
line(xy(:,1),xy(:,2), 'Color','red', 'LineWidth',2);
zebatka=bw1;
zebatka(maskEroded)=1;
%imshow(zebatka);
zebatka=imcomplement(zebatka);
figure;
imshow(zebatka);
[L ilosc_zebow_w_pierwszej_tarczy]=bwlabel(zebatka,8);
hold off;

figure;
imshow(bw2);
hold on;
bwW2 = imcomplement(bw2);
bwW2=medfilt2(bwW2);
rp=regionprops(double(bwW2), 'all');
xy=rp.ConvexHull;
line(xy(:,1),xy(:,2), 'Color','yellow', 'LineWidth',2);
[r,c]=size(bwW2);
mask=poly2mask(xy(:,1),xy(:,2),r,c);
maskEroded=imerode(mask, ones(34));
rp=regionprops(double(maskEroded), 'all');
xy=rp.ConvexHull;
line(xy(:,1),xy(:,2), 'Color','red', 'LineWidth',2);
bw2=medfilt2(bw2);
zebatka2=bw2;
zebatka2(maskEroded)=1;
%imshow(zebatka2);
zebatka2=imcomplement(zebatka2);
figure;
imshow(zebatka2);
[L ilosc_zebow_w_drugiej_tarczy]=bwlabel(zebatka2,8);
hold off;
figure;


imshow(bw3_1);
hold on;
bwW3_1 = imcomplement(bw3_1);
bwW3_1=medfilt2(bwW3_1);
rp=regionprops(double(bwW3_1), 'all');
xy=rp.ConvexHull;
line(xy(:,1),xy(:,2), 'Color','yellow', 'LineWidth',2);
[r,c]=size(bwW3_1);
mask=poly2mask(xy(:,1),xy(:,2),r,c);
maskEroded=imerode(mask, ones(16));
rp=regionprops(double(maskEroded), 'all');
xy=rp.ConvexHull;
line(xy(:,1),xy(:,2), 'Color','red', 'LineWidth',2);
bw3_1=medfilt2(bw3_1);
zebatka3=bw3_1;
zebatka3(maskEroded)=1;
%imshow(zebatka2);
zebatka3=imcomplement(zebatka3);
zebatka3=medfilt2(zebatka3);
figure;
imshow(zebatka3);
[L num3]=bwlabel(zebatka3,8);
num3=num3-1;
hold off;
figure;

imshow(bw3_2);
hold on;
bwW3_2 = imcomplement(bw3_2);
bwW3_2=medfilt2(bwW3_2);
rp=regionprops(double(bwW3_2), 'all');
xy=rp.ConvexHull;
line(xy(:,1),xy(:,2), 'Color','yellow', 'LineWidth',2);
[r,c]=size(bwW3_2);
mask=poly2mask(xy(:,1),xy(:,2),r,c);
maskEroded=imerode(mask, ones(13));
rp=regionprops(double(maskEroded), 'all');
xy=rp.ConvexHull;
line(xy(:,1),xy(:,2), 'Color','red', 'LineWidth',2);
bw3_2=medfilt2(bw3_2);
zebatka3_2=bw3_2;
zebatka3_2(maskEroded)=1;
%imshow(zebatka2);
zebatka3_2=imcomplement(zebatka3_2);
zebatka3_2=medfilt2(zebatka3_2);
figure;
imshow(zebatka3_2);
[L num33]=bwlabel(zebatka3_2,8);
hold off;

figure;
imshow(bw3_3);
hold on;
bwW3_3 = imcomplement(bw3_3);
bwW3_3=medfilt2(bwW3_3);
rp=regionprops(double(bwW3_3), 'all');
xy=rp.ConvexHull;
line(xy(:,1),xy(:,2), 'Color','yellow', 'LineWidth',2);
[r,c]=size(bwW3_3);
mask=poly2mask(xy(:,1),xy(:,2),r,c);
maskEroded=imerode(mask, ones(13));
rp=regionprops(double(maskEroded), 'all');
xy=rp.ConvexHull;
line(xy(:,1),xy(:,2), 'Color','red', 'LineWidth',2);
bw3_2=medfilt2(bw3_3);
zebatka3_3=bw3_3;
zebatka3_3(maskEroded)=1;
%imshow(zebatka2);
zebatka3_3=imcomplement(zebatka3_3);
zebatka3_3=medfilt2(zebatka3_3);
figure;
imshow(zebatka3_3);
[L num333]=bwlabel(zebatka3_3,8);
hold off;

ilosc_zebow_w_trzecim_zdjeciu=num3+num33+num333;
figure;
%bw4=bwareaopen(bw4,30);
%se=strel('disk',4);
%O=imopen(bw4,se);
%C=imclose(bw4,se);
imshow(bw4);
hold on;
bwW4 = imcomplement(bw4);
bwW4=medfilt2(bwW4);
rp=regionprops(double(bwW4), 'all');
xy=rp.ConvexHull;
line(xy(:,1),xy(:,2), 'Color','yellow', 'LineWidth',2);
[r,c]=size(bwW4);
mask=poly2mask(xy(:,1),xy(:,2),r,c);
maskEroded=imerode(mask, ones(66));
rp=regionprops(double(maskEroded), 'all');
xy=rp.ConvexHull;
line(xy(:,1),xy(:,2), 'Color','red', 'LineWidth',2);
bw4=medfilt2(bw4);
zebatka4=bw4;
zebatka4(maskEroded)=1;
%imshow(zebatka2);
zebatka4=imcomplement(zebatka4);
zebatka4=medfilt2(zebatka4);
figure;
imshow(zebatka4);
[L ilosc_zebow_w_czwartej_tarczy]=bwlabel(zebatka4,8);
hold off;
%figure;

%%
figure;
imshow(bw1); 
hold on;
for i = 1:numel(stats1)
    rectangle('Position', stats1(i).BoundingBox);
end
hold off;
figure;
imshow(bw2);
hold on;
for i = 1:numel(stats2)
    rectangle('Position', stats2(i).BoundingBox);
end
hold off;
figure;
imshow(bw3);
hold on;
for i = 1:numel(stats3)
    rectangle('Position', stats3(i).BoundingBox);
end
hold off;
figure;
imshow(bw4);
hold on;
for i = 1:numel(stats4)
    rectangle('Position', stats4(i).BoundingBox);
end
hold off;

%Area = regionprops(bw1,'Area');
%S = cat(1, Area.Area);

%g=regionprops(bw1, 'Area');
%area_values=[g.Area];
%idx=find((area_values>=2000)&(area_values<=4000));

%[h,num]=ismember(I1, idx);
%imshow(h);


