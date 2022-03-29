close all
clear all

% wy?wietlenie aproksymowanej funkcji
X=-pi/2:pi/100:3.5*pi;
D=funkcja(X);

%zbi?r ucz?cy
Xlearn=-pi/2:pi/20:3.5*pi;
Dlearn=funkcja_z_szumem(Xlearn);

% stworzenie sieci
net1=newff([-pi/2,3.5*pi],[1 1],{'purelin','purelin'},'trainlm');
net1.trainParam.epochs = 20;
net1.trainParam.showWindow = false;

% uczenie sieci
for j=1:1:10
net1=train(net1,Xlearn,Dlearn);
end
% obliczenie b??du dla zb. ucz?cego
Ylearn1 = sim(net1,X);
Elearn1=mse(D - Ylearn1)

%%
% stworzenie sieci
net2=newff([-pi/2,3.5*pi],[2 1],{'purelin','purelin'},'trainlm');
net2.trainParam.epochs = 20;
net2.trainParam.showWindow = false;

% uczenie sieci
for j=1:1:10
net2=train(net2,Xlearn,Dlearn);
end
% obliczenie b??du dla zb. ucz?cego
Ylearn2 = sim(net2,X);
Elearn2=mse(D - Ylearn2)

%%

net3=newff([-pi/2,3.5*pi],[3 1],{'purelin','purelin'},'trainlm');
net3.trainParam.epochs = 20;
net3.trainParam.showWindow = false;

% uczenie sieci
for j=1:1:10
net3=train(net3,Xlearn,Dlearn);
end
% obliczenie b??du dla zb. ucz?cego
Ylearn3 = sim(net3,X);
Elearn3=mse(D - Ylearn3)

%%

net4=newff([-pi/2,3.5*pi],[4 1],{'purelin','purelin'},'trainlm');
net4.trainParam.epochs = 20;
net4.trainParam.showWindow = false;

% uczenie sieci
for j=1:1:10
net4=train(net3,Xlearn,Dlearn);
end
% obliczenie b??du dla zb. ucz?cego
Ylearn4 = sim(net4,X);
Elearn4=mse(D - Ylearn4)

%%
net5=newff([-pi/2,3.5*pi],[5 1],{'purelin','purelin'},'trainlm');
net5.trainParam.epochs = 20;
net5.trainParam.showWindow = false;

% uczenie sieci
for j=1:1:10
net5=train(net5,Xlearn,Dlearn);
end
% obliczenie b??du dla zb. ucz?cego
Ylearn5 = sim(net5,X);
Elearn5=mse(D - Ylearn5)

%%
net6=newff([-pi/2,3.5*pi],[6 1],{'purelin','purelin'},'trainlm');
net6.trainParam.epochs = 20;
net6.trainParam.showWindow = false;

% uczenie sieci
for j=1:1:10
net6=train(net6,Xlearn,Dlearn);
end
% obliczenie b??du dla zb. ucz?cego
Ylearn6 = sim(net6,X);
Elearn6=mse(D - Ylearn6)
%%

net7=newff([-pi/2,3.5*pi],[7 1],{'purelin','purelin'},'trainlm');
net7.trainParam.epochs = 20;
net7.trainParam.showWindow = false;

% uczenie sieci
for j=1:1:10
net7=train(net7,Xlearn,Dlearn);
end
% obliczenie b??du dla zb. ucz?cego
Ylearn7 = sim(net7,X);
Elearn7=mse(D - Ylearn7)
%%
net8=newff([-pi/2,3.5*pi],[8 1],{'purelin','purelin'},'trainlm');
net8.trainParam.epochs = 20;
net8.trainParam.showWindow = false;

% uczenie sieci
for j=1:1:10
net8=train(net8,Xlearn,Dlearn);
end
% obliczenie b??du dla zb. ucz?cego
Ylearn8 = sim(net8,X);
Elearn8=mse(D - Ylearn8)
%%

net9=newff([-pi/2,3.5*pi],[9 1],{'purelin','purelin'},'trainlm');
net9.trainParam.epochs = 20;
net9.trainParam.showWindow = false;

% uczenie sieci
for j=1:1:10
net9=train(net9,Xlearn,Dlearn);
end
% obliczenie b??du dla zb. ucz?cego
Ylearn9 = sim(net9,X);
Elearn9=mse(D - Ylearn9)
%%

net10=newff([-pi/2,3.5*pi],[10 1],{'purelin','purelin'},'trainlm');
net10.trainParam.epochs = 20;
net10.trainParam.showWindow = false;

% uczenie sieci
for j=1:1:10
net10=train(net10,Xlearn,Dlearn);
end
% obliczenie b??du dla zb. ucz?cego
Ylearn10 = sim(net10,X);
Elearn10=mse(D - Ylearn10)
%%

net11=newff([-pi/2,3.5*pi],[11 1],{'purelin','purelin'},'trainlm');
net11.trainParam.epochs = 20;
net11.trainParam.showWindow = false;

% uczenie sieci
for j=1:1:10
net11=train(net11,Xlearn,Dlearn);
end
% obliczenie b??du dla zb. ucz?cego
Ylearn11 = sim(net11,X);
Elearn11=mse(D - Ylearn11)

%%

net12=newff([-pi/2,3.5*pi],[12 1],{'purelin','purelin'},'trainlm');
net12.trainParam.epochs = 20;
net12.trainParam.showWindow = false;

% uczenie sieci
for j=1:1:10
net12=train(net12,Xlearn,Dlearn);
end
% obliczenie b??du dla zb. ucz?cego
Ylearn12 = sim(net12,X);
Elearn12=mse(D - Ylearn12)

%%

net13=newff([-pi/2,3.5*pi],[13 1],{'purelin','purelin'},'trainlm');
net13.trainParam.epochs = 20;
net13.trainParam.showWindow = false;

% uczenie sieci
for j=1:1:10
net13=train(net13,Xlearn,Dlearn);
end
% obliczenie b??du dla zb. ucz?cego
Ylearn13 = sim(net13,X);
Elearn13=mse(D - Ylearn13)

%%

net14=newff([-pi/2,3.5*pi],[14 1],{'purelin','purelin'},'trainlm');
net14.trainParam.epochs = 20;
net14.trainParam.showWindow = false;

% uczenie sieci
for j=1:1:10
net14=train(net14,Xlearn,Dlearn);
end

% obliczenie b??du dla zb. ucz?cego
Ylearn14 = sim(net14,X);
Elearn14=mse(D - Ylearn14)

%%

net15=newff([-pi/2,3.5*pi],[15 1],{'purelin','purelin'},'trainlm');
net15.trainParam.epochs = 20;
net15.trainParam.showWindow = false;

% uczenie sieci
for j=1:1:10
net15=train(net15,Xlearn,Dlearn);
end
% obliczenie b??du dla zb. ucz?cego
Ylearn15 = sim(net15,X);
Elearn15=mse(D - Ylearn15)
%%

net16=newff([-pi/2,3.5*pi],[16 1],{'purelin','purelin'},'trainlm');
net16.trainParam.epochs = 20;
net16.trainParam.showWindow = false;

% uczenie sieci
for j=1:1:10
net16=train(net16,Xlearn,Dlearn);
end
% obliczenie b??du dla zb. ucz?cego
Ylearn16 = sim(net16,X);
Elearn16=mse(D - Ylearn16)

%%

net17=newff([-pi/2,3.5*pi],[17 1],{'purelin','purelin'},'trainlm');
net17.trainParam.epochs = 20;
net17.trainParam.showWindow = false;

% uczenie sieci
for j=1:1:10
net17=train(net17,Xlearn,Dlearn);
end
% obliczenie b??du dla zb. ucz?cego
Ylearn17 = sim(net17,X);
Elearn17=mse(D - Ylearn17)

%%

net18=newff([-pi/2,3.5*pi],[18 1],{'purelin','purelin'},'trainlm');
net18.trainParam.epochs = 20;
net18.trainParam.showWindow = false;

% uczenie sieci
for j=1:1:10
net18=train(net18,Xlearn,Dlearn);
end

% obliczenie b??du dla zb. ucz?cego
Ylearn18 = sim(net18,X);
Elearn18=mse(D - Ylearn18)

%%

net19=newff([-pi/2,3.5*pi],[19 1],{'purelin','purelin'},'trainlm');
net19.trainParam.epochs = 20;
net19.trainParam.showWindow = false;

% uczenie sieci
for j=1:1:10
net19=train(net19,Xlearn,Dlearn);
end
% obliczenie b??du dla zb. ucz?cego
Ylearn19 = sim(net19,X);
Elearn19=mse(D - Ylearn19)
%%

net20=newff([-pi/2,3.5*pi],[20 1],{'purelin','purelin'},'trainlm');
net20.trainParam.epochs = 20;
net20.trainParam.showWindow = false;

% uczenie sieci
for j=1:1:10
net20=train(net20,Xlearn,Dlearn);
end
% obliczenie b??du dla zb. ucz?cego
Ylearn20 = sim(net20,X);
Elearn20=mse(D - Ylearn20)
%%

net21=newff([-pi/2,3.5*pi],[21 1],{'purelin','purelin'},'trainlm');
net21.trainParam.epochs = 20;
net21.trainParam.showWindow = false;

% uczenie sieci
for j=1:1:10
net21=train(net21,Xlearn,Dlearn);
end
% obliczenie b??du dla zb. ucz?cego
Ylearn21 = sim(net21,X);
Elearn21=mse(D - Ylearn21)

%%

net22=newff([-pi/2,3.5*pi],[22 1],{'purelin','purelin'},'trainlm');
net22.trainParam.epochs = 20;
net22.trainParam.showWindow = false;

% uczenie sieci
for j=1:1:10
net22=train(net22,Xlearn,Dlearn);
end
% obliczenie b??du dla zb. ucz?cego
Ylearn22 = sim(net22,X);
Elearn22=mse(D - Ylearn22)

%%

net23=newff([-pi/2,3.5*pi],[23 1],{'purelin','purelin'},'trainlm');
net23.trainParam.epochs = 20;
net23.trainParam.showWindow = false;

% uczenie sieci
for j=1:1:10
net23=train(net23,Xlearn,Dlearn);
end
% obliczenie b??du dla zb. ucz?cego
Ylearn23 = sim(net23,X);
Elearn23=mse(D - Ylearn23)
%%

net24=newff([-pi/2,3.5*pi],[24 1],{'purelin','purelin'},'trainlm');
net24.trainParam.epochs = 20;
net24.trainParam.showWindow = false;

% uczenie sieci
for j=1:1:10
net24=train(net24,Xlearn,Dlearn);
end
% obliczenie b??du dla zb. ucz?cego
Ylearn24 = sim(net24,X);
Elearn24=mse(D - Ylearn24)
%%
net25=newff([-pi/2,3.5*pi],[25 1],{'purelin','purelin'},'trainlm');
net25.trainParam.epochs = 20;
net25.trainParam.showWindow = false;

% uczenie sieci
for j=1:1:10
net25=train(net25,Xlearn,Dlearn);
end
% obliczenie b??du dla zb. ucz?cego
Ylearn25 = sim(net25,X);
Elearn25=mse(D - Ylearn25)
%%
net50=newff([-pi/2,3.5*pi],[50 1],{'purelin','purelin'},'trainlm');
net50.trainParam.epochs = 20;
net50.trainParam.showWindow = false;
% uczenie sieci
for j=1:1:10
net50=train(net50,Xlearn,Dlearn);
end
% obliczenie b??du dla zb. ucz?cego
Ylearn50 = sim(net50,X);
Elearn50=mse(D - Ylearn50)

%%
net100=newff([-pi/2,3.5*pi],[100 1],{'purelin','purelin'},'trainlm');
net100.trainParam.epochs = 20;
net100.trainParam.showWindow = false;

% uczenie sieci
for j=1:1:10
net100=train(net100,Xlearn,Dlearn);
end
% obliczenie b??du dla zb. ucz?cego
Ylearn100 = sim(net100,X);
Elearn100=mse(D - Ylearn100)

%% 
Elearn=[Elearn1 Elearn2 Elearn3 Elearn4 Elearn5 Elearn6 Elearn7 Elearn8 Elearn9 Elearn10 Elearn11 Elearn12 Elearn13 Elearn14 Elearn15 Elearn16 Elearn17 Elearn18 Elearn19 Elearn20 Elearn21 Elearn22 Elearn23 Elearn24 Elearn25 Elearn50 Elearn100];
[minimumY,minimumX]=min(Elearn);
A=[1:25 50 100];
figure;
plot(A, Elearn);
hold on;
plot(A(minimumX), minimumY, 'x');

%%
figure;
plot(X,D);
hold on;
plot(Xlearn,Dlearn,'k*');
Ytest = sim(net21,X);
plot(X,Ytest);
legend('funkcja','funkcja z szumem','funkcja dla najmniejszego neuronu');
