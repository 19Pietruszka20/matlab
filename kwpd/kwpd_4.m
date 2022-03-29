clear all;
clc;

A=[1 -8 6 0 1 3 1 0 5 2 1 0 -9 -1 0 1];

%Gracz1
%A(1,1)
%A(1,2)
%Gracz2
%A(1,1)
%A(2,1)
%A(3,1)
%A(4,1)
ilosc_gier=(length(A)/4);
for i=1:ilosc_gier
A1(1,1)=A((i*4)-3);
A1(1,2)=A((i*4)-2);
A1(2,1)=A((i*4)-1);
A1(2,2)=A((i*4)-0);
wynik(i)=gra(A1);
%drzewo=etree(A1);
end
wynik=reshape(wynik, [2 2]);
wynik=wynik';
wynik_koncowy=gra(wynik);
punktS=punktsiod(wynik);
function wartosc=gra(A1)
[rows, columns]=size(A1);
sz=size(A1);
maxR=zeros(sz(1),1);
minC=zeros(1,sz(2));
minC(:,:)=100000;
minG1=100000;
maxG2=-100000;

for i=1:1:rows
    for j=1:1:columns
        if(A1(i,j)>=maxR(i,1))
           maxR(i,1)=A1(i,j);
        end
    end
end

for i=1:1:columns
    for j=1:1:rows
        if(A1(j,i)<=minC(1,i))
           minC(1,i)=A1(j,i);
        end
    end
end



for i=1:1:rows
    if(maxR(i,1)<=minG1)
        minG1=maxR(i,1);
        sbG1=i;
    end
end

for i=1:1:columns
    if(minC(1,i)>=maxG2)
        maxG2=minC(1,i);
        sbG2=i;
    end
end

if(minG1==maxG2)
    punktS=true;
else
    punktS=false;
end

licznik=1;
for p=1:1:rows
    if(minG1==(maxR(p,1)))
        liczSBG1(licznik)=p;
        licznik=licznik+1;
    end
end

licznik2=1;
for p2=1:1:columns
    if(maxG2==(minC(1,p2)))
        liczSBG2(licznik2)=p2;
        licznik2=licznik2+1;
    end
end
wartosc=A1(sbG1,sbG2);
%minG1 to poziom bezpiecze�stwa gracza1
%maxG2 to poziom bezpiecze�stwa gracza2
%sbG1 to strategia bezpiecze�stwa gracza1
%sbG2 to strategia bezpiecze�stwa gracza2
%punktS to punkt siod�owy
%liczSBG1 to strategie bezpiecze�stwa gracza1
%liczSBG2 to strategie bezpiecze�stwa gracza2
end



function punktS=punktsiod(A1)
[rows, columns]=size(A1);
sz=size(A1);
maxR=zeros(sz(1),1);
minC=zeros(1,sz(2));
minC(:,:)=100000;
minG1=100000;
maxG2=-100000;

for i=1:1:rows
    for j=1:1:columns
        if(A1(i,j)>=maxR(i,1))
           maxR(i,1)=A1(i,j);
        end
    end
end

for i=1:1:columns
    for j=1:1:rows
        if(A1(j,i)<=minC(1,i))
           minC(1,i)=A1(j,i);
        end
    end
end



for i=1:1:rows
    if(maxR(i,1)<=minG1)
        minG1=maxR(i,1);
        sbG1=i;
    end
end

for i=1:1:columns
    if(minC(1,i)>=maxG2)
        maxG2=minC(1,i);
        sbG2=i;
    end
end

if(minG1==maxG2)
    punktS=true;
else
    punktS=false;
end

licznik=1;
for p=1:1:rows
    if(minG1==(maxR(p,1)))
        liczSBG1(licznik)=p;
        licznik=licznik+1;
    end
end

licznik2=1;
for p2=1:1:columns
    if(maxG2==(minC(1,p2)))
        liczSBG2(licznik2)=p2;
        licznik2=licznik2+1;
    end
end
%minG1 to poziom bezpiecze�stwa gracza1
%maxG2 to poziom bezpiecze�stwa gracza2
%sbG1 to strategia bezpiecze�stwa gracza1
%sbG2 to strategia bezpiecze�stwa gracza2
%punktS to punkt siod�owy
%liczSBG1 to strategie bezpiecze�stwa gracza1
%liczSBG2 to strategie bezpiecze�stwa gracza2
end
