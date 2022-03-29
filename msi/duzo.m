clear all;
clc;

W1=[-1 -1 -1 -1 -1 -1; -1 1 1 1 1 -1; -1 1 1 1 1 -1; -1 1 1 1 1 -1; -1 1 1 1 1 -1; -1 -1 -1 -1 -1 -1]
W2=-[1 1 1 1 1 1; -1 -1 1 1 -1 -1; -1 -1 1 1 -1 -1; -1 -1 1 1 -1 -1; -1 -1 1 1 -1 -1; -1 -1 1 1 -1 -1]
W3=-[-1 -1 -1 -1 -1 -1; -1 -1 -1 -1 -1 -1; 1 1 1 1 1 1; -1 -1 -1 -1 -1 -1; -1 -1 -1 -1 -1 -1; -1 -1 -1 -1 -1 -1]
W4=-[1 -1 -1 -1 -1 -1; 1 -1 -1 -1 -1 -1; 1 -1 -1 -1 -1 -1; 1 -1 -1 -1 -1 -1; 1 -1 -1 -1 -1 -1; 1 -1 -1 -1 -1 -1]
W5=-[-1 -1 -1 -1 -1 1; -1 -1 -1 -1 -1 1; -1 -1 -1 -1 -1 1; -1 -1 -1 -1 -1 1; -1 -1 -1 -1 -1 1; -1 -1 -1 -1 -1 1]
W6=-[1 -1 -1 -1 -1 -1; 1 -1 -1 -1 -1 -1; 1 -1 -1 -1 -1 -1; 1 -1 -1 -1 -1 -1; 1 -1 -1 -1 -1 -1; 1 1 1 1 1 1]


%W1=im2bw(W1)
%W2=im2bw(W2)
%W3=im2bw(W3)
%W4=im2bw(W4)
%W5=im2bw(W5)
%W6=im2bw(W6)


%W1=2*W1-1;
%W2=2*W2-1;
%W3=2*W3-1;
%W4=2*W4-1;
%W5=2*W5-1;
%W6=2*W6-1;

subplot(2, 4, 1)
imshow(W1);
xlabel('Wzorzec1')
subplot(2, 4, 2)
imshow(W2);
xlabel('Wzorzec2')
subplot(2, 4, 3)
imshow(W3);
xlabel('Wzorzec3')
subplot(2, 4, 4)
imshow(W4);
xlabel('Wzorzec4')
subplot(2, 4, 5)
imshow(W5);
xlabel('Wzorzec5')
subplot(2, 4, 6)
imshow(W6);
xlabel('Wzorzec6')

W1r=reshape(W1,[],1);
W2r=reshape(W2,[],1);
W3r=reshape(W3,[],1);
W4r=reshape(W4,[],1);
W5r=reshape(W5,[],1);
W6r=reshape(W6,[],1);
D=[W1r W2r W3r W4r];

test=[-1 -1 1 -1 -1 1        -1 -1 1 1 -1 -1         -1 -1 1 1 1 1        -1 1 1 1 1 -1        -1 1 1 -1 -1 1       1 -1 -1 -1 1 -1]';
N=36;

%W=D*D'/N
W=D*((D'*D)^-1)*D';
wynik=sign(W*test);
for i=1:10
    wynik=sign(W*wynik);
end
wynik=reshape(wynik, 6,6)

subplot(2,4,7);
imshow(wynik)
xlabel('Wynik')
subplot(2,4,8);
test=reshape(test,6,6);
imshow(test);
xlabel('Test')

