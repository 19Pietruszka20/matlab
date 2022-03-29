clear all
clc
x=[0; 0; 0 ;0];
eps= 0.1;
f =@(x)12220*x(1) - 15634*x(2) - 1306*x(3) - 162*x(4) + 62020*x(1)*x(2) + 4560*x(1)*x(3) + 540*x(1)*x(4) + 6804*x(2)*x(3) + 1026*x(2)*x(4) + 270*x(3)*x(4) + 57595*x(1)^2 + 32368*x(2)^2 + 706*x(3)^2 + 27*x(4)^2 + 11824;

d=[0;
   0;
   0;
   0;]

h =[115190 62020 4560 540;
    62020 64736 6804 1026;
    4560 6804 1412 270;
    540 1026 270 54];
B=eye(4)
i=0
n=0

options = optimset('TolX',1e-6,'TolFun',1e-6,'MaxFunEval',1e50)

while 1
    %x=x-inv(h)*gradientf(x)
   %F=f(x)
   x0=x
   g0=gradientf(x)
   d(:,:)=-B*gradientf(x);
      fa = @(a)f(d*a+x);
    [a,y] = fminsearch(fa,0,options);
    x = d*a+x;
    g1=gradientf(x)
    x1=x
    gdelta=g1-g0
    xdelta=x1-x0
    i=i+1
    if(gdelta~=0&xdelta~=0&i~=9)
    Tg=gdelta'
    Tx=xdelta'
    B=B+(1+((Tg*B*gdelta)/(Tx*gdelta)))*((xdelta*Tx)/(Tg*xdelta))-((xdelta*Tg*B+B*gdelta*Tx)/(Tg*xdelta))
    else
        B=eye(4)
        i=0;
    end
    n=n+1
    disp(num2str(x'))
    disp(num2str(f(x)))
    disp(num2str(norm(gradientf(x))))
    if(norm(gradientf(x))<eps | n==10)
        break
    end
end
norm(gradientf(x))
x
disp(num2str(x'))
f(x)



