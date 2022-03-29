close all
clear all

% wy?wietlenie aproksymowanej funkcji
X=-pi/2:pi/100:3.5*pi;
D=funkcja(X);
%figure(1); plot(X,D,'k'); hold on
%legend('Prawdziwa funkcja');


%zbi?r ucz?cy
Xlearn=-pi/2:pi/20:3.5*pi;
Dlearn=funkcja_z_szumem(Xlearn);
%plot(Xlearn,Dlearn,'k*');
%legend('Prawdziwa funkcja','Zbior uczacy');



% stworzenie sieci
net1=newff([-pi/2,3.5*pi],[1 1],{'purelin','purelin'},'trainlm');
net1.trainParam.epochs = 20;
net1.trainParam.showWindow = false;

% uczenie sieci
for j=1:1:10
net1=train(net1,Xlearn,Dlearn);
end



% obliczenie i wy?wietlenie funcji realizowanej przez sie?
Y = sim(net1,X);


% obliczenie b??du dla zb. ucz?cego
Ylearn1 = sim(net1,Xlearn);
Elearn=mse(Dlearn - Ylearn1)

%zbi?r testowy
Xtest=Xlearn;
Dtest=funkcja_z_szumem(Xtest);

% obliczenie b??du dla zb. testowego
Ytest1 = sim(net1,Xtest);
Etest1=mse(Dtest - Ytest1)


%%
% stworzenie sieci
net2=newff([-pi/2,3.5*pi],[2 1],{'purelin','purelin'},'trainlm');
net2.trainParam.epochs = 20;
net2.trainParam.showWindow = false;

% uczenie sieci
for j=1:1:10
net2=train(net2,Xlearn,Dlearn);
end



% obliczenie i wy?wietlenie funcji realizowanej przez sie?
Y = sim(net2,X);


% obliczenie b??du dla zb. ucz?cego
Ylearn2 = sim(net2,Xlearn);
Elearn=mse(Dlearn - Ylearn2)


%zbi?r testowy
Xtest=Xlearn;
Dtest=funkcja_z_szumem(Xtest);


% obliczenie b??du dla zb. testowego
Ytest2 = sim(net2,Xtest);
Etest2=mse(Dtest - Ytest2)

%%

net3=newff([-pi/2,3.5*pi],[3 1],{'purelin','purelin'},'trainlm');
net3.trainParam.epochs = 20;
net3.trainParam.showWindow = false;

% uczenie sieci
for j=1:1:10
net3=train(net3,Xlearn,Dlearn);
end



% obliczenie i wy?wietlenie funcji realizowanej przez sie?
Y = sim(net3,X);


% obliczenie b??du dla zb. ucz?cego
Ylearn3 = sim(net3,Xlearn);
Elearn=mse(Dlearn - Ylearn3)


%zbi?r testowy
Xtest=Xlearn;
Dtest=funkcja_z_szumem(Xtest);


% obliczenie b??du dla zb. testowego
Ytest3 = sim(net3,Xtest);
Etest3=mse(Dtest - Ytest3)

%%

net4=newff([-pi/2,3.5*pi],[4 1],{'purelin','purelin'},'trainlm');
net4.trainParam.epochs = 20;
net4.trainParam.showWindow = false;

% uczenie sieci
for j=1:1:10
net4=train(net3,Xlearn,Dlearn);
end



% obliczenie i wy?wietlenie funcji realizowanej przez sie?
Y = sim(net4,X);


% obliczenie b??du dla zb. ucz?cego
Ylearn4 = sim(net4,Xlearn);
Elearn=mse(Dlearn - Ylearn4)


%zbi?r testowy
Xtest=Xlearn;
Dtest=funkcja_z_szumem(Xtest);


% obliczenie b??du dla zb. testowego
Ytest4 = sim(net4,Xtest);
Etest4=mse(Dtest - Ytest4)


%%
net5=newff([-pi/2,3.5*pi],[5 1],{'purelin','purelin'},'trainlm');
net5.trainParam.epochs = 20;
net5.trainParam.showWindow = false;

% uczenie sieci
for j=1:1:10
net5=train(net5,Xlearn,Dlearn);
end



% obliczenie i wy?wietlenie funcji realizowanej przez sie?
Y = sim(net5,X);

% obliczenie b??du dla zb. ucz?cego
Ylearn5 = sim(net5,Xlearn);
Elearn=mse(Dlearn - Ylearn5)


%zbi?r testowy
Xtest=Xlearn;
Dtest=funkcja_z_szumem(Xtest);


% obliczenie b??du dla zb. testowego
Ytest5 = sim(net5,Xtest);
Etest5=mse(Dtest - Ytest5)

%%
net6=newff([-pi/2,3.5*pi],[6 1],{'purelin','purelin'},'trainlm');
net6.trainParam.epochs = 20;
net6.trainParam.showWindow = false;

% uczenie sieci
for j=1:1:10
net6=train(net6,Xlearn,Dlearn);
end



% obliczenie i wy?wietlenie funcji realizowanej przez sie?
Y = sim(net6,X);

% obliczenie b??du dla zb. ucz?cego
Ylearn6 = sim(net6,Xlearn);
Elearn=mse(Dlearn - Ylearn6)


%zbi?r testowy
Xtest=Xlearn;
Dtest=funkcja_z_szumem(Xtest);


% obliczenie b??du dla zb. testowego
Ytest6 = sim(net6,Xtest);
Etest6=mse(Dtest - Ytest6)
%%

net7=newff([-pi/2,3.5*pi],[7 1],{'purelin','purelin'},'trainlm');
net7.trainParam.epochs = 20;
net7.trainParam.showWindow = false;

% uczenie sieci
for j=1:1:10
net7=train(net7,Xlearn,Dlearn);
end



% obliczenie i wy?wietlenie funcji realizowanej przez sie?
Y = sim(net7,X);


% obliczenie b??du dla zb. ucz?cego
Ylearn7 = sim(net7,Xlearn);
Elearn=mse(Dlearn - Ylearn7)


%zbi?r testowy
Xtest=Xlearn;
Dtest=funkcja_z_szumem(Xtest);


% obliczenie b??du dla zb. testowego
Ytest7 = sim(net7,Xtest);
Etest7=mse(Dtest - Ytest7)


%%
net8=newff([-pi/2,3.5*pi],[8 1],{'purelin','purelin'},'trainlm');
net8.trainParam.epochs = 20;
net8.trainParam.showWindow = false;

% uczenie sieci
for j=1:1:10
net8=train(net8,Xlearn,Dlearn);
end



% obliczenie i wy?wietlenie funcji realizowanej przez sie?
Y = sim(net8,X);


% obliczenie b??du dla zb. ucz?cego
Ylearn8 = sim(net8,Xlearn);
Elearn=mse(Dlearn - Ylearn8)


%zbi?r testowy
Xtest=Xlearn;
Dtest=funkcja_z_szumem(Xtest);


% obliczenie b??du dla zb. testowego
Ytest8 = sim(net8,Xtest);
Etest8=mse(Dtest - Ytest8)

%%

net9=newff([-pi/2,3.5*pi],[9 1],{'purelin','purelin'},'trainlm');
net9.trainParam.epochs = 20;
net9.trainParam.showWindow = false;

% uczenie sieci
for j=1:1:10
net9=train(net9,Xlearn,Dlearn);
end



% obliczenie i wy?wietlenie funcji realizowanej przez sie?
Y = sim(net9,X);


% obliczenie b??du dla zb. ucz?cego
Ylearn9 = sim(net9,Xlearn);
Elearn=mse(Dlearn - Ylearn9)


%zbi?r testowy
Xtest=Xlearn;
Dtest=funkcja_z_szumem(Xtest);


% obliczenie b??du dla zb. testowego
Ytest9 = sim(net9,Xtest);
Etest9=mse(Dtest - Ytest9)


%%

net10=newff([-pi/2,3.5*pi],[10 1],{'purelin','purelin'},'trainlm');
net10.trainParam.epochs = 20;
net10.trainParam.showWindow = false;

% uczenie sieci
for j=1:1:10
net10=train(net10,Xlearn,Dlearn);
end



% obliczenie i wy?wietlenie funcji realizowanej przez sie?
Y = sim(net10,X);


% obliczenie b??du dla zb. ucz?cego
Ylearn10 = sim(net10,Xlearn);
Elearn=mse(Dlearn - Ylearn10)


%zbi?r testowy
Xtest=Xlearn;
Dtest=funkcja_z_szumem(Xtest);


% obliczenie b??du dla zb. testowego
Ytest10 = sim(net10,Xtest);
Etest10=mse(Dtest - Ytest10)

%%

net11=newff([-pi/2,3.5*pi],[11 1],{'purelin','purelin'},'trainlm');
net11.trainParam.epochs = 20;
net11.trainParam.showWindow = false;

% uczenie sieci
for j=1:1:10
net11=train(net11,Xlearn,Dlearn);
end



% obliczenie i wy?wietlenie funcji realizowanej przez sie?
Y = sim(net11,X);


% obliczenie b??du dla zb. ucz?cego
Ylearn11 = sim(net11,Xlearn);
Elearn=mse(Dlearn - Ylearn11)


%zbi?r testowy
Xtest=Xlearn;
Dtest=funkcja_z_szumem(Xtest);


% obliczenie b??du dla zb. testowego
Ytest11 = sim(net11,Xtest);
Etest11=mse(Dtest - Ytest11)


%%

net12=newff([-pi/2,3.5*pi],[12 1],{'purelin','purelin'},'trainlm');
net12.trainParam.epochs = 20;
net12.trainParam.showWindow = false;

% uczenie sieci
for j=1:1:10
net12=train(net12,Xlearn,Dlearn);
end



% obliczenie i wy?wietlenie funcji realizowanej przez sie?
Y = sim(net12,X);


% obliczenie b??du dla zb. ucz?cego
Ylearn12 = sim(net12,Xlearn);
Elearn=mse(Dlearn - Ylearn12)


%zbi?r testowy
Xtest=Xlearn;
Dtest=funkcja_z_szumem(Xtest);


% obliczenie b??du dla zb. testowego
Ytest12 = sim(net12,Xtest);
Etest12=mse(Dtest - Ytest12)

%%

net13=newff([-pi/2,3.5*pi],[13 1],{'purelin','purelin'},'trainlm');
net13.trainParam.epochs = 20;
net13.trainParam.showWindow = false;

% uczenie sieci
for j=1:1:10
net13=train(net13,Xlearn,Dlearn);
end



% obliczenie i wy?wietlenie funcji realizowanej przez sie?
Y = sim(net13,X);


% obliczenie b??du dla zb. ucz?cego
Ylearn13 = sim(net13,Xlearn);
Elearn=mse(Dlearn - Ylearn13)


%zbi?r testowy
Xtest=Xlearn;
Dtest=funkcja_z_szumem(Xtest);


% obliczenie b??du dla zb. testowego
Ytest13 = sim(net13,Xtest);
Etest13=mse(Dtest - Ytest13)

%%

net14=newff([-pi/2,3.5*pi],[14 1],{'purelin','purelin'},'trainlm');
net14.trainParam.epochs = 20;
net14.trainParam.showWindow = false;

% uczenie sieci
for j=1:1:10
net14=train(net14,Xlearn,Dlearn);
end



% obliczenie i wy?wietlenie funcji realizowanej przez sie?
Y = sim(net14,X);


% obliczenie b??du dla zb. ucz?cego
Ylearn14 = sim(net14,Xlearn);
Elearn=mse(Dlearn - Ylearn14)


%zbi?r testowy
Xtest=Xlearn;
Dtest=funkcja_z_szumem(Xtest);


% obliczenie b??du dla zb. testowego
Ytest14 = sim(net14,Xtest);
Etest14=mse(Dtest - Ytest14)

%%

net15=newff([-pi/2,3.5*pi],[15 1],{'purelin','purelin'},'trainlm');
net15.trainParam.epochs = 20;
net15.trainParam.showWindow = false;

% uczenie sieci
for j=1:1:10
net15=train(net15,Xlearn,Dlearn);
end



% obliczenie i wy?wietlenie funcji realizowanej przez sie?
Y = sim(net15,X);


% obliczenie b??du dla zb. ucz?cego
Ylearn15 = sim(net15,Xlearn);
Elearn=mse(Dlearn - Ylearn15)


%zbi?r testowy
Xtest=Xlearn;
Dtest=funkcja_z_szumem(Xtest);


% obliczenie b??du dla zb. testowego
Ytest15 = sim(net15,Xtest);
Etest15=mse(Dtest - Ytest15)

%%

net16=newff([-pi/2,3.5*pi],[16 1],{'purelin','purelin'},'trainlm');
net16.trainParam.epochs = 20;
net16.trainParam.showWindow = false;

% uczenie sieci
for j=1:1:10
net16=train(net16,Xlearn,Dlearn);
end



% obliczenie i wy?wietlenie funcji realizowanej przez sie?
Y = sim(net16,X);


% obliczenie b??du dla zb. ucz?cego
Ylearn16 = sim(net16,Xlearn);
Elearn=mse(Dlearn - Ylearn16)


%zbi?r testowy
Xtest=Xlearn;
Dtest=funkcja_z_szumem(Xtest);


% obliczenie b??du dla zb. testowego
Ytest16 = sim(net16,Xtest);
Etest16=mse(Dtest - Ytest16)

%%

net17=newff([-pi/2,3.5*pi],[17 1],{'purelin','purelin'},'trainlm');
net17.trainParam.epochs = 20;
net17.trainParam.showWindow = false;

% uczenie sieci
for j=1:1:10
net17=train(net17,Xlearn,Dlearn);
end



% obliczenie i wy?wietlenie funcji realizowanej przez sie?
Y = sim(net17,X);


% obliczenie b??du dla zb. ucz?cego
Ylearn17 = sim(net17,Xlearn);
Elearn=mse(Dlearn - Ylearn17)


%zbi?r testowy
Xtest=Xlearn;
Dtest=funkcja_z_szumem(Xtest);


% obliczenie b??du dla zb. testowego
Ytest17 = sim(net17,Xtest);
Etest17=mse(Dtest - Ytest17)

%%

net18=newff([-pi/2,3.5*pi],[18 1],{'purelin','purelin'},'trainlm');
net18.trainParam.epochs = 20;
net18.trainParam.showWindow = false;

% uczenie sieci
for j=1:1:10
net18=train(net18,Xlearn,Dlearn);
end



% obliczenie i wy?wietlenie funcji realizowanej przez sie?
Y = sim(net18,X);


% obliczenie b??du dla zb. ucz?cego
Ylearn18 = sim(net18,Xlearn);
Elearn=mse(Dlearn - Ylearn18)


%zbi?r testowy
Xtest=Xlearn;
Dtest=funkcja_z_szumem(Xtest);


% obliczenie b??du dla zb. testowego
Ytest18 = sim(net18,Xtest);
Etest18=mse(Dtest - Ytest18)

%%

net19=newff([-pi/2,3.5*pi],[19 1],{'purelin','purelin'},'trainlm');
net19.trainParam.epochs = 20;
net19.trainParam.showWindow = false;

% uczenie sieci
for j=1:1:10
net19=train(net19,Xlearn,Dlearn);
end



% obliczenie i wy?wietlenie funcji realizowanej przez sie?
Y = sim(net19,X);


% obliczenie b??du dla zb. ucz?cego
Ylearn19 = sim(net19,Xlearn);
Elearn=mse(Dlearn - Ylearn19)


%zbi?r testowy
Xtest=Xlearn;
Dtest=funkcja_z_szumem(Xtest);


% obliczenie b??du dla zb. testowego
Ytest19 = sim(net19,Xtest);
Etest19=mse(Dtest - Ytest19)

%%

net20=newff([-pi/2,3.5*pi],[20 1],{'purelin','purelin'},'trainlm');
net20.trainParam.epochs = 20;
net20.trainParam.showWindow = false;

% uczenie sieci
for j=1:1:10
net20=train(net20,Xlearn,Dlearn);
end



% obliczenie i wy?wietlenie funcji realizowanej przez sie?
Y = sim(net20,X);


% obliczenie b??du dla zb. ucz?cego
Ylearn20 = sim(net20,Xlearn);
Elearn=mse(Dlearn - Ylearn20)


%zbi?r testowy
Xtest=Xlearn;
Dtest=funkcja_z_szumem(Xtest);


% obliczenie b??du dla zb. testowego
Ytest20 = sim(net20,Xtest);
Etest20=mse(Dtest - Ytest20)

%%

net21=newff([-pi/2,3.5*pi],[21 1],{'purelin','purelin'},'trainlm');
net21.trainParam.epochs = 20;
net21.trainParam.showWindow = false;

% uczenie sieci
for j=1:1:10
net21=train(net21,Xlearn,Dlearn);
end



% obliczenie i wy?wietlenie funcji realizowanej przez sie?
Y = sim(net21,X);


% obliczenie b??du dla zb. ucz?cego
Ylearn21 = sim(net21,Xlearn);
Elearn=mse(Dlearn - Ylearn21)


%zbi?r testowy
Xtest=Xlearn;
Dtest=funkcja_z_szumem(Xtest);


% obliczenie b??du dla zb. testowego
Ytest21 = sim(net21,Xtest);
Etest21=mse(Dtest - Ytest21)

%%

net22=newff([-pi/2,3.5*pi],[22 1],{'purelin','purelin'},'trainlm');
net22.trainParam.epochs = 20;
net22.trainParam.showWindow = false;

% uczenie sieci
for j=1:1:10
net22=train(net22,Xlearn,Dlearn);
end



% obliczenie i wy?wietlenie funcji realizowanej przez sie?
Y = sim(net22,X);


% obliczenie b??du dla zb. ucz?cego
Ylearn22 = sim(net22,Xlearn);
Elearn=mse(Dlearn - Ylearn22)


%zbi?r testowy
Xtest=Xlearn;
Dtest=funkcja_z_szumem(Xtest);


% obliczenie b??du dla zb. testowego
Ytest22 = sim(net22,Xtest);
Etest22=mse(Dtest - Ytest22)

%%

net23=newff([-pi/2,3.5*pi],[23 1],{'purelin','purelin'},'trainlm');
net23.trainParam.epochs = 20;
net23.trainParam.showWindow = false;

% uczenie sieci
for j=1:1:10
net23=train(net23,Xlearn,Dlearn);
end



% obliczenie i wy?wietlenie funcji realizowanej przez sie?
Y = sim(net23,X);


% obliczenie b??du dla zb. ucz?cego
Ylearn23 = sim(net23,Xlearn);
Elearn=mse(Dlearn - Ylearn23)


%zbi?r testowy
Xtest=Xlearn;
Dtest=funkcja_z_szumem(Xtest);


% obliczenie b??du dla zb. testowego
Ytest23 = sim(net23,Xtest);
Etest23=mse(Dtest - Ytest23)
%%

net24=newff([-pi/2,3.5*pi],[24 1],{'purelin','purelin'},'trainlm');
net24.trainParam.epochs = 20;
net24.trainParam.showWindow = false;

% uczenie sieci
for j=1:1:10
net24=train(net24,Xlearn,Dlearn);
end



% obliczenie i wy?wietlenie funcji realizowanej przez sie?
Y = sim(net24,X);


% obliczenie b??du dla zb. ucz?cego
Ylearn24 = sim(net24,Xlearn);
Elearn=mse(Dlearn - Ylearn24)


%zbi?r testowy
Xtest=Xlearn;
Dtest=funkcja_z_szumem(Xtest);


% obliczenie b??du dla zb. testowego
Ytest24 = sim(net24,Xtest);
Etest24=mse(Dtest - Ytest24)
%%
net25=newff([-pi/2,3.5*pi],[25 1],{'purelin','purelin'},'trainlm');
net25.trainParam.epochs = 20;
net25.trainParam.showWindow = false;

% uczenie sieci
for j=1:1:10
net25=train(net25,Xlearn,Dlearn);
end



% obliczenie i wy?wietlenie funcji realizowanej przez sie?
Y = sim(net25,X);


% obliczenie b??du dla zb. ucz?cego
Ylearn25 = sim(net25,Xlearn);
Elearn=mse(Dlearn - Ylearn25)


%zbi?r testowy
Xtest=Xlearn;
Dtest=funkcja_z_szumem(Xtest);


% obliczenie b??du dla zb. testowego
Ytest25 = sim(net25,Xtest);
Etest25=mse(Dtest - Ytest25)
 

%%
net50=newff([-pi/2,3.5*pi],[50 1],{'purelin','purelin'},'trainlm');
net50.trainParam.epochs = 20;
net50.trainParam.showWindow = false;

% uczenie sieci
for j=1:1:10
net50=train(net50,Xlearn,Dlearn);
end



% obliczenie i wy?wietlenie funcji realizowanej przez sie?
Y = sim(net50,X);


% obliczenie b??du dla zb. ucz?cego
Ylearn50 = sim(net50,Xlearn);
Elearn=mse(Dlearn - Ylearn50)

%zbi?r testowy
Xtest=Xlearn;
Dtest=funkcja_z_szumem(Xtest);


% obliczenie b??du dla zb. testowego
Ytest50 = sim(net50,Xtest);
Etest50=mse(Dtest - Ytest50)

%%
net100=newff([-pi/2,3.5*pi],[100 1],{'purelin','purelin'},'trainlm');
net100.trainParam.epochs = 20;
net100.trainParam.showWindow = false;

% uczenie sieci
for j=1:1:10
net100=train(net100,Xlearn,Dlearn);
end



% obliczenie i wy?wietlenie funcji realizowanej przez sie?
Y = sim(net100,X);


% obliczenie b??du dla zb. ucz?cego
Ylearn100 = sim(net100,Xlearn);
Elearn=mse(Dlearn - Ylearn100)

%zbi?r testowy
Xtest=Xlearn;
Dtest=funkcja_z_szumem(Xtest);


% obliczenie b??du dla zb. testowego
Ytest100 = sim(net100,Xtest);
Etest100=mse(Dtest - Ytest100)

%% 
Etest=[Etest1 Etest2 Etest3 Etest4 Etest5 Etest6 Etest7 Etest8 Etest9 Etest10 Etest11 Etest12 Etest13 Etest14 Etest15 Etest16 Etest17 Etest18 Etest19 Etest20 Etest21 Etest22 Etest23 Etest24 Etest25 Etest50 Etest100];
[minimumY,minimumX]=min(Etest);
A=[1:25 50 100];
figure;
plot(A, Etest);
hold on;
plot(A(minimumX), minimumY, 'x');

%%
figure;
plot(X,D);
hold on;
plot(Xlearn,Dlearn,'k*');
Ytest = sim(net22,X);
plot(X,Ytest);
legend('funkcja','funkcja z szumem','funkcja dla najmniejszego neuronu');

