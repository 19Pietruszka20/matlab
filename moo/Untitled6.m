% minimalizacja na kierunku
% na przyk³adzie fun. f(x): R^2 -> R
clc
clear all
format short

%--------------------------------------------------------------------------
% funkcja celu f(x)
%f(x) = 12220*x1 - 15634*x2 - 1306*x3 - 162*x4 + 62020*x1*x2 + 4560*x1*x3 +
% +540*x1*x4 + 6804*x2*x3 + 1026*x2*x4 + 270*x3*x4 + 57595*x1^2 + 32368*x2^2 + 706*x3^2 + 27*x4^2 + 11824
f = @(x)12220*x(1) - 15634*x(2) - 1306*x(3) - 162*x(4) + 62020*x(1)*x(2) + 4560*x(1)*x(3) + 540*x(1)*x(4) + 6804*x(2)*x(3) + 1026*x(2)*x(4) + 270*x(3)*x(4) + 57595*x(1)^2 + 32368*x(2)^2 + 706*x(3)^2 + 27*x(4)^2 + 11824;

  % D = [  d1,  d2,  d3,  d4]
    D = [1,0,0,0;
        0,1,0,0;
        0,0,1,0;
        0,0,0,1]
% punkt pocz¹tkowy
X =[1;...  
   2;...  
   3;...  
   4]
% wartoœæ fun. celu w p. pocz¹tkowym
F = f(X);
eps=0.000000001;
  
disp(['k = 0 | x'' = [',num2str(X'),'] | f(x) = ',num2str(F)]);
%--------------------------------------------------------------------------
N = 4;  % okreœlenie liczby kierunków poszukiwañ


    fa = @(a)f( D(:,4)*a +X ); 
    [a,y] = fminsearch(fa,0);
    X = D(:,4)*a +X;
    x0=X;
i=1;
while 1  %tu zmien na 1
x0=X;
for k = 1:N    
    % fun. jednej zmiennej wyznaczona na prostej, która jest zdefiniowana
    % przez punkt 'X' i kierunek 'd_k'
    fa = @(a)f( D(:,k)*a +X ); 
    
    % poszukiwanie minimum funkcji f(x) na kierunku 'd_k'
    % (lub) poszukiwanie minimum funkcji jednej zmiennej
    [a,y] = fminsearch(fa,0);
    % wyznaczenie 'nowego/lepszego' punktu przybli¿aj¹cego min fun. f(x)
    X = D(:,k)*a +X;
end
    xk=X;
    nkierunek=xk-x0;
    fa = @(a)f(nkierunek*a +X );
    [a,y] = fminsearch(fa,0);
    X = nkierunek*a +X;
    xk1=X;
    xn=xk1-x0;
    xn1=xn(1)*xn(1);
    xn2=xn(2)*xn(2);
    xn3=xn(3)*xn(3);
    xn4=xn(4)*xn(4);
    norma=sqrt(xn1+xn2+xn3+xn4)
    i=i+1;
    disp(['k = ',num2str(k),' | x'' = [',num2str(X'),'] | f(x) = ',num2str(y) '| i=', num2str(i)]);
if(norma<eps)%tu spróbuj dodaæ warunek stopu
break;
else
D(:,1)=D(:,2)
D(:,2)=D(:,3)
D(:,3)=D(:,4)
D(:,4)=xk-x0%tutaj nie jestem pewny
end
end
%---------
