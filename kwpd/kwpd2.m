A=[13 4 3 3 4 13;
   12 5 4 4 5 12;
   60 20 10 10 20 60;
   1 2 3 4 5 6;
   6 5 4 3 2 1;
   20 20 20 20 20 20;]

%Gracz1
%A(1,1)
%A(1,2)
%Gracz2
%A(1,1)
%A(2,1)
%A(3,1)
%A(4,1)

[rows, columns]=size(A);
sz=size(A);
maxR=zeros(sz(1),1);
minC=zeros(1,sz(2));
minC(:,:)=100000;
minG1=100000;
maxG2=0;

for i=1:1:rows
    for j=1:1:columns
        if(A(i,j)>=maxR(i,1))
           maxR(i,1)=A(i,j);
        end
    end
end

for i=1:1:columns
    for j=1:1:rows
        if(A(j,i)<=minC(1,i))
           minC(1,i)=A(j,i);
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
%minG1 to poziom bezpieczeñstwa gracza1
%maxG2 to poziom bezpieczeñstwa gracza2
%sbG1 to strategia bezpieczeñstwa gracza1
%sbG2 to strategia bezpieczeñstwa gracza2
%punktS to punkt siod³owy