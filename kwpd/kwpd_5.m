clear all;
clc;

A=[1 -8 6 0 1 3 2 0 5 2 1 0 -9 -1 0 1];

B=[-1 2 3 1 -3 0 1 3 5 -1 -3 2 0 3 1 2];

ilosc_gier=(length(A)/4);
ilosc_gier=(length(B)/4);

pairW=ones(1,4);
pairC=ones(1,4);

for i=1:ilosc_gier
A1(1,1)=A((i*4)-3);
A1(1,2)=A((i*4)-2);
A1(2,1)=A((i*4)-1);
A1(2,2)=A((i*4)-0);

B1(1,1)=B((i*4)-3);
B1(1,2)=B((i*4)-2);
B1(2,1)=B((i*4)-1);
B1(2,2)=B((i*4)-0);
[pairW(i),pairC(i)]=Nash(A1, B1);
Akoncowe(i)=A1(pairW(i), pairC(i));
Bkoncowe(i)=B1(pairW(i), pairC(i));
%nash=Nash(A1,B1);
%wynik(i)=Nash(A1, B1);
%drzewo=etree(A1);
end
%Bkoncowe=[-1 -3; -3 0];
Akoncowe=reshape(Akoncowe, [2 2]);
Bkoncowe=reshape(Bkoncowe, [2 2]);
[pairWkoncowy, pairCkoncowy]=Nash(Akoncowe,Bkoncowe);
wynikA=Akoncowe(pairWkoncowy,pairCkoncowy);
wynikB=Bkoncowe(pairWkoncowy,pairCkoncowy);
paraWynik=[wynikA,wynikB];


%[paraWi, paraCo]
%wartosc
function [paraWi, paraCo] = Nash(A1,B1)
[rowsA,columnsA]=size(A1);
[rowsB,columnsB]=size(B1);
minA=ones(rowsA,1)*10000000;
minB=ones(rowsB,1)*10000000;

for i=1:columnsA
   for j=1:rowsA
       if(A1(j,i)<=minA(i))
           minA(i)=A1(j,i);
           pozycja(i)=j;
       end
   end
end


for k=1:rowsB
    for z=1:columnsB
       if(B1(pozycja(k),z)<=minB(k))
           minB(k)=B1(pozycja(k),z);
           pozycja2(k)=z;
           if(pozycja2(k)==k)
           k;
           paraw(k)=pozycja(k);
           parac(k)=pozycja2(k);
       end
       end
    end
end

paraWi=paraw;
paraCo=parac;
%para1=[paraw(1),parac(1)];

%para2=[paraw(2),parac(2)];
%para3=[paraw(3),parac(3)];
%wartosc=para1;


%if(A1(paraw(1),parac(1))<=(A1(paraw(2),parac(2))&&A1(paraw(3),parac(3))) && B1(paraw(1),parac(1))<=(B1(paraw(2),parac(2))&&B1(paraw(3),parac(3))))
%    para_dop=[paraw(1),parac(1)];
%elseif(A1(paraw(2),parac(2))<=(A1(paraw(1),parac(1))&&A1(paraw(3),parac(3))) && B1(paraw(2),parac(2))<=(B1(paraw(1),parac(1))&&B1(paraw(3),parac(3))))
%    para_dop=[paraw(2),parac(2)];
%elseif(A1(paraw(3),parac(3))<=(A1(paraw(2),parac(2))&&A1(paraw(1),parac(1))) && B1(paraw(3),parac(3))<=(B1(paraw(2),parac(2))&&B1(paraw(1),parac(1))))
%    para_dop=[paraw(3),parac(3)];
%end
%wartosc=para_dop;
end