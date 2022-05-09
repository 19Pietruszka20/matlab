function wynik=knnmoje(nowy_punkt_x,nowy_punkt_y, zestawdanych1, zestawdanych2, zestawdanych3)
x=[0 0.06 0.12 0.18 0.24 0.30 0.36 0.42 0.50 0.6 0.68 0.76 0.82 0.9 1];
classb='b.';
classr='r.';
classg='g.';
iloscb=0;
iloscr=0;
iloscg=0;

%hold on;
%plot(x,zestawdanych1, 'b.');
%plot(x,zestawdanych2, 'r.');
%plot(x,zestawdanych3, 'g.');


%nowy_punkt_x=0.5;
%nowy_punkt_y=0.5;

plot(nowy_punkt_x,nowy_punkt_y, 'm.');

dystans=[];
dystans2=[];
dystans3=[];
punkt1=[];
punkt22=[];
punkt33=[];

for i=1:length(zestawdanych1)
    e=sqrt((zestawdanych1(i)-nowy_punkt_y)^2 + (x(i)-nowy_punkt_x)^2);
    e2=sqrt((zestawdanych2(i)-nowy_punkt_y)^2 + (x(i)-nowy_punkt_x)^2);
    e3=sqrt((zestawdanych3(i)-nowy_punkt_y)^2 + (x(i)-nowy_punkt_x)^2);
    punkt=[x(i),zestawdanych1(i)];
    punkt2=[x(i),zestawdanych2(i)];
    punkt3=[x(i),zestawdanych3(i)];
    punkt1=[punkt1;punkt];
    punkt22=[punkt22;punkt2];
    punkt33=[punkt33;punkt3];
    dystans=[dystans e];
    dystans2=[dystans2 e2];
    dystans3=[dystans3 e3];
end

punkt1
dystans
najmniejszydystans=sort(dystans)
najmniejszydystans2=sort(dystans2)
najmniejszydystans3=sort(dystans3)

k=1;
for i=1:k
    for j=1:k
    if najmniejszydystans(i)<najmniejszydystans2(j)
        if najmniejszydystans(i)<najmniejszydystans3(j)
        iloscb=iloscb+1;
        end
    end
    end
end

for i=1:k
    for j=1:k
    if najmniejszydystans2(i)<najmniejszydystans(j)
        if najmniejszydystans2(i)<najmniejszydystans3(j)
        iloscr=iloscr+1;
        end
    end
    end
end

for i=1:k
    for j=1:k
    if najmniejszydystans3(i)<najmniejszydystans(j)
        if najmniejszydystans3(i)<najmniejszydystans2(j);
        iloscg=iloscg+1;
        end
    end
    end
end

%hold off;
iloscb
iloscr
iloscg

%figure;

if iloscb>iloscr
    if iloscb>iloscg
    %plot(nowy_punkt_x,nowy_punkt_y, classb);
    end
end
if iloscr>iloscb
    if iloscr>iloscg
    %plot(nowy_punkt_x,nowy_punkt_y, classr);
    end
end
if iloscg>iloscb
    if iloscg>iloscr
    %plot(nowy_punkt_x,nowy_punkt_y, classg);
    end
end

%figure;
%hold on;
%plot(x,zestawdanych1, 'b.');
%plot(x,zestawdanych2, 'r.');
%plot(x,zestawdanych3, 'g.');

if iloscb>iloscr
    if iloscb>iloscg
    %plot(nowy_punkt_x,nowy_punkt_y, classb);
    wynik=classb;
    end
end
if iloscr>iloscb
    if iloscr>iloscg
    %plot(nowy_punkt_x,nowy_punkt_y, classr);
    wynik=classr;
    end
end
if iloscg>iloscb
    if iloscg>iloscr
    %plot(nowy_punkt_x,nowy_punkt_y, classg);
    wynik=classg;
    end
end

%hold off;
end