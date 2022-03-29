clear all
clc
x=[5.0;  -60.0;  5000.0;  -40000.0];
eps=0.0001;
f =@(x)12220*x(1) - 15634*x(2) - 1306*x(3) - 162*x(4) + 62020*x(1)*x(2) + 4560*x(1)*x(3) + 540*x(1)*x(4) + 6804*x(2)*x(3) + 1026*x(2)*x(4) + 270*x(3)*x(4) + 57595*x(1)^2 + 32368*x(2)^2 + 706*x(3)^2 + 27*x(4)^2 + 11824;

%d=[0;
%   0;
 %  0;
 %  0;]

h =[115190.0 62020.0 4560.0 540.0;
    62020.0 64736.0 6804.0 1026.0;
    4560.0 6804.0 1412.0 270.0;
    540.0 1026.0 270.0 54.0];
%inv(h)
%gradientf(x)
%B=eye(4)
i=0
while 1
    x=x-inv(h)*gradientf(x)
   F=f(x)
   %g0=gradientf(x);
   gradientf(x)
   norm(gradientf(x))
   %fa = @(a)f(d*a+x);
   % [a,y] = fminsearch(fa,0);
   % x = d*a+x;
   % x
   % f(x)
   %d(:,:)=(-inv(h))*g0;
    i=i+1
    if(norm(gradientf(x))<eps)
        break
    end
end
x
f(x)
