clear all;
clc;

I=imread('kwadratS.png');
IO=imread('kolkoS.png');
Itroj=imread('trojkatS.png');
I1=imread('kwadratS100.png');
I2=imread('romb.png');
I3=imread('kwadratD.png');
I4=imread('kwadratm.png');
I5=imread('koloD.png');
I6=imread('koloM.png');
I7=imread('kolkoSminus100.png');
I8=imread('kolkoS100.png');
I9=imread('trojkatD.png');
I10=imread('trojkatm.png');
I11=imread('translacja71.png');
I12=imread('rotacja61.png');
%RP=regionprops(I, 'Area' , 'Centroid');



I=imbinarize(I);
I1=imbinarize(I1);
I2=imbinarize(I2);
I3=imbinarize(I3);
I4=imbinarize(I4);
IO=imbinarize(IO);
Itroj=imbinarize(Itroj);
I5=imbinarize(I5);
I6=imbinarize(I6);
I7=imbinarize(I7);
I8=imbinarize(I8);
I9=imbinarize(I9);
I10=imbinarize(I10);
I11=imbinarize(I11);
I12=imbinarize(I12);

cent = regionprops(I,'perimeter');
L = cat(1, cent.Perimeter);

Area = regionprops(I,'Area');
S = cat(1, Area.Area);


cent1 = regionprops(I1,'perimeter');
L1 = cat(1, cent1.Perimeter);

Area1 = regionprops(I1,'Area');
S1 = cat(1, Area1.Area);


cent2 = regionprops(I2,'perimeter');
L2 = cat(1, cent2.Perimeter);

Area2 = regionprops(I2,'Area');
S2 = cat(1, Area2.Area);


cent3 = regionprops(I3,'perimeter');
L3 = cat(1, cent3.Perimeter);

Area3 = regionprops(I3,'Area');
S3 = cat(1, Area3.Area);


cent4 = regionprops(I4,'perimeter');
L4 = cat(1, cent4.Perimeter);

Area4 = regionprops(I4,'Area');
S4 = cat(1, Area4.Area);

cent5 = regionprops(I5,'perimeter');
L5 = cat(1, cent5.Perimeter);

Area5 = regionprops(I5,'Area');
S5 = cat(1, Area5.Area);

cent6 = regionprops(I6,'perimeter');
L6 = cat(1, cent6.Perimeter);

Area6 = regionprops(I6,'Area');
S6 = cat(1, Area6.Area);

cent7 = regionprops(I7,'perimeter');
L7 = cat(1, cent7.Perimeter);

Area7 = regionprops(I7,'Area');
S7 = cat(1, Area7.Area);

cent8 = regionprops(I8,'perimeter');
L8 = cat(1, cent8.Perimeter);

Area8 = regionprops(I8,'Area');
S8 = cat(1, Area8.Area);

cent9 = regionprops(IO,'perimeter');
L9 = cat(1, cent9.Perimeter);

Area9 = regionprops(IO,'Area');
S9 = cat(1, Area9.Area);

cent10 = regionprops(I9,'perimeter');
L10 = cat(1, cent10.Perimeter);

Area10 = regionprops(I9,'Area');
S10 = cat(1, Area10.Area);

cent11 = regionprops(I10,'perimeter');
L11 = cat(1, cent11.Perimeter);

Area11 = regionprops(I10,'Area');
S11 = cat(1, Area11.Area);

cent12 = regionprops(I11,'perimeter');
L12 = cat(1, cent12.Perimeter);

Area12 = regionprops(I11,'Area');
S12 = cat(1, Area12.Area);

cent13 = regionprops(I12,'perimeter');
L13 = cat(1, cent13.Perimeter);

Area13 = regionprops(I12,'Area');
S13 = cat(1, Area13.Area);

cent14 = regionprops(Itroj,'perimeter');
L14 = cat(1, cent14.Perimeter);

Area14 = regionprops(Itroj,'Area');
S14 = cat(1, Area14.Area);

%S=RP.Area;
%L=RP.Centroid;


Mz=2*sqrt(pi*S)/L

M=(L/(2*sqrt(pi*S)))-1

K=(4*pi*S)/(L*L)

Mz1=2*sqrt(pi*S1)/L1

M1=(L1/(2*sqrt(pi*S1)))-1

K1=(4*pi*S1)/(L1*L1)

Mz2=2*sqrt(pi*S1)/L2

M2=(L2/(2*sqrt(pi*S2)))-1

K2=(4*pi*S2)/(L2*L2)

Mz3=2*sqrt(pi*S3)/L3

M3=(L3/(2*sqrt(pi*S3)))-1

K3=(4*pi*S3)/(L3*L3)

Mz4=2*sqrt(pi*S4)/L4

M4=(L4/(2*sqrt(pi*S4)))-1

K4=(4*pi*S4)/(L4*L4)

Mz5=2*sqrt(pi*S5)/L5

M5=(L5/(2*sqrt(pi*S5)))-1

K5=(4*pi*S5)/(L5*L5)


Mz6=2*sqrt(pi*S6)/L6

M6=(L6/(2*sqrt(pi*S6)))-1

K6=(4*pi*S6)/(L6*L6)

Mz7=2*sqrt(pi*S7)/L7

M7=(L7/(2*sqrt(pi*S7)))-1

K7=(4*pi*S7)/(L7*L7)

Mz8=2*sqrt(pi*S8)/L8

M8=(L8/(2*sqrt(pi*S8)))-1

K8=(4*pi*S8)/(L8*L8)

Mz9=2*sqrt(pi*S9)/L9

M9=(L9/(2*sqrt(pi*S9)))-1

K9=(4*pi*S9)/(L9*L9)

Mz10=2*sqrt(pi*S10)/L10

M10=(L10/(2*sqrt(pi*S10)))-1

K10=(4*pi*S10)/(L10*L10)

Mz11=2*sqrt(pi*S11)/L11

M11=(L11/(2*sqrt(pi*S11)))-1

K11=(4*pi*S11)/(L11*L11)

Mz12=2*sqrt(pi*S12)/L12

M12=(L12/(2*sqrt(pi*S12)))-1

K12=(4*pi*S12)/(L12*L12)

Mz13=2*sqrt(pi*S13)/L13

M13=(L13/(2*sqrt(pi*S13)))-1

K13=(4*pi*S13)/(L13*L13)

Mz14=2*sqrt(pi*S14)/L14

M14=(L14/(2*sqrt(pi*S14)))-1

K14=(4*pi*S14)/(L14*L14)

otoczenie=bwarea(I);

CT=bwperim(I);

for i=1:180
IT=imtranslate(I, [0 i]);
centT = regionprops(IT,'perimeter');
LT = cat(1, centT.Perimeter);

AreaT = regionprops(IT,'Area');
ST = cat(1, AreaT.Area);

MzT(i)=2*sqrt(pi*ST)/LT;

MT(i)=(LT/(2*sqrt(pi*ST)))-1;

KT(i)=(4*pi*ST)/(LT*LT);
end

j=[1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 123 124 125 126 127 128 129 130 131 132 133 134 135 136 137 138 139 140 141 142 143 144 145 146 147 148 149 150 151 152 153 154 155 156 157 158 159 160 161 162 163 164 165 166 167 168 169 170 171 172 173 174 175 176 177 178 179 180];

   plot(j,MzT(1:180)); 
   hold on;
  
   
for i=1:180
ITO=imtranslate(IO, [0 i]);
centTO = regionprops(ITO,'perimeter');
LTO = cat(1, centTO.Perimeter);

AreaTO = regionprops(ITO,'Area');
STO = cat(1, AreaTO.Area);

MzTO(i)=2*sqrt(pi*STO)/LTO;

MTO(i)=(LTO/(2*sqrt(pi*STO)))-1;

KTO(i)=(4*pi*STO)/(LTO*LTO);
end

plot(j,MzTO(1:180));

for i=1:180
ITT=imtranslate(Itroj, [0 i]);
centTT = regionprops(ITT,'perimeter');
LTT = cat(1, centTT.Perimeter);

AreaTT = regionprops(ITT,'Area');
STT = cat(1, AreaTT.Area);

MzTT(i)=2*sqrt(pi*STT)/LTT;

MTT(i)=(LTT/(2*sqrt(pi*STT)))-1;

KTT(i)=(4*pi*STT)/(LTT*LTT);
end

plot(j,MzTT(1:180));
legend('kwadrat','kolo', 'trojkat');
hold off;
figure;
plot(j, KT(1:180));
hold on;
plot(j, KTO(1:180));
plot(j, KTT(1:180));
hold off;
figure;
plot(j, MT(1:180));
hold on;
plot(j, MTO(1:180));
plot(j, MTT(1:180));
hold off;
figure;

for i=1:180
IR=imrotate(I, i);
centR = regionprops(IR,'perimeter');
LR = cat(1, centR.Perimeter);

AreaR = regionprops(IR,'Area');
SR = cat(1, AreaR.Area);

MzR(i)=2*sqrt(pi*SR)/LR;

MR(i)=(LR/(2*sqrt(pi*SR)))-1;

KR(i)=(4*pi*SR)/(LR*LR);
end
   
   plot(j,KR(1:180));
   
   hold on;
   
   
for i=1:180
IRO=imrotate(IO, i);
centRO = regionprops(IRO,'perimeter');
LRO = cat(1, centRO.Perimeter);

AreaRO = regionprops(IRO,'Area');
SRO = cat(1, AreaRO.Area);

MzRO(i)=2*sqrt(pi*SRO)/LRO;

MRO(i)=(LRO/(2*sqrt(pi*SRO)))-1;

KRO(i)=(4*pi*SRO)/(LRO*LRO);
end

plot(j,KRO(1:180));
   
for i=1:180
IRT=imrotate(Itroj, i);
centRT = regionprops(IRT,'perimeter');
LRT = cat(1, centRT.Perimeter);

AreaRT = regionprops(IRT,'Area');
SRT = cat(1, AreaRT.Area);

MzRT(i)=2*sqrt(pi*SRT)/LRT;

MRT(i)=(LRT/(2*sqrt(pi*SRT)))-1;

KRT(i)=(4*pi*SRT)/(LRT*LRT);
end

plot(j,KRT(1:180));
   legend('kwadrat','kolo', 'trojkat');
   hold off;
   
   figure;
   plot(j, MR(1:180));
   hold on;
   plot(j,MRO(1:180));
   plot(j,MRT(1:180));
   hold off;
    figure;
   plot(j, MzR(1:180));
   hold on;
   plot(j,MzRO(1:180));
   plot(j,MzRT(1:180));
   hold off;
   
   figure;

for i=1:16
IRE=imresize(I, i);
centRE = regionprops(IRE,'perimeter');
LRE = cat(1, centRE.Perimeter);

AreaRE = regionprops(IRE,'Area');
SRE = cat(1, AreaRE.Area);

MzRE(i)=2*sqrt(pi*SRE)/LRE;

MRE(i)=(LRE/(2*sqrt(pi*SRE)))-1;

KRE(i)=(4*pi*SRE)/(LRE*LRE);
end
   jdlaresize=[1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16];
   plot(jdlaresize,KRE(1:16));
   
   hold on;
   
   
for i=1:16
IROE=imresize(IO, i);
centROE = regionprops(IROE,'perimeter');
LROE = cat(1, centROE.Perimeter);

AreaROE = regionprops(IROE,'Area');
SROE = cat(1, AreaROE.Area);

MzROE(i)=2*sqrt(pi*SROE)/LROE;

MROE(i)=(LROE/(2*sqrt(pi*SROE)))-1;

KROE(i)=(4*pi*SROE)/(LROE*LROE);
end

plot(jdlaresize,KROE(1:16));
   
for i=1:16
IRTE=imresize(Itroj, i);
centRTE = regionprops(IRTE,'perimeter');
LRTE = cat(1, centRTE.Perimeter);

AreaRTE = regionprops(IRTE,'Area');
SRTE = cat(1, AreaRTE.Area);

MzRTE(i)=2*sqrt(pi*SRTE)/LRTE;

MRTE(i)=(LRTE/(2*sqrt(pi*SRTE)))-1;

KRTE(i)=(4*pi*SRTE)/(LRTE*LRTE);
end

plot(jdlaresize,KRTE(1:16));
   legend('kwadrat','kolo', 'trojkat');
   hold off;
   figure;
   
   hold on;
%plot([0 0.1 0.4 0.7 0.9], M);
%plot([0 0.1 0.4 0.7 0.9], M1);
%plot([0 0.1 0.4 0.7 0.9], M2);
%plot([0 0.1 0.4 0.7 0.9], M3);
%plot([0 0.1 0.4 0.7 0.9], M4);
%plot([0 0.1 0.4 0.7 0.9], Mz);
%plot([0 0.1 0.4 0.7 0.9], Mz1);
%plot([0 0.1 0.4 0.7 0.9], Mz2);
%plot([0 0.1 0.4 0.7 0.9], Mz3);
%plot([0 0.1 0.4 0.7 0.9], Mz4);
%plot([0 0.1 0.4 0.7 0.9], K);
%plot([0 0.1 0.4 0.7 0.9], K1);
%plot([0 0.1 0.4 0.7 0.9], K2);
%plot([0 0.1 0.4 0.7 0.9], K3);
%plot([0 0.1 0.4 0.7 0.9], K4);
grid
plot([0 0.06 0.12 0.18 0.24 0.30 0.36 0.42 0.50 0.6 0.68 0.76 0.82 0.9 1], [M M1 M2 M3 M4 Mz Mz1 Mz2 Mz3 Mz4 K K1 K2 K3 K4], 'b.');
plot([0 0.06 0.12 0.18 0.24 0.30 0.36 0.42 0.50 0.6 0.68 0.76 0.82 0.9 1], [M5 M6 M7 M8 M9 Mz5 Mz6 Mz7 Mz8 Mz9 K5 K6 K7 K8 K9], 'r.');
plot([0 0.06 0.12 0.18 0.24 0.30 0.36 0.42 0.50 0.6 0.68 0.76 0.82 0.9 1], [M10 M11 M12 M13 M14 Mz10 Mz11 Mz12 Mz13 Mz14 K10 K11 K12 K13 K14], 'g.');
legend('kwadrat','kolo', 'trojkat');
hold off;
figure;
hold on;
plot3([0 0.06 0.12 0.18 0.24 0.30 0.36 0.42 0.50 0.6 0.68 0.76 0.82 0.9 1],[0 0.06 0.12 0.18 0.24 0.30 0.36 0.42 0.50 0.6 0.68 0.76 0.82 0.9 1],[M M1 M2 M3 M4 Mz Mz1 Mz2 Mz3 Mz4 K K1 K2 K3 K4], 'b.')
plot3([0 0.06 0.12 0.18 0.24 0.30 0.36 0.42 0.50 0.6 0.68 0.76 0.82 0.9 1],[0 0.06 0.12 0.18 0.24 0.30 0.36 0.42 0.50 0.6 0.68 0.76 0.82 0.9 1],[M5 M6 M7 M8 M9 Mz5 Mz6 Mz7 Mz8 Mz9 K5 K6 K7 K8 K9], 'r.')
plot3([0 0.06 0.12 0.18 0.24 0.30 0.36 0.42 0.50 0.6 0.68 0.76 0.82 0.9 1],[0 0.06 0.12 0.18 0.24 0.30 0.36 0.42 0.50 0.6 0.68 0.76 0.82 0.9 1],[M10 M11 M12 M13 M14 Mz10 Mz11 Mz12 Mz13 Mz14 K10 K11 K12 K13 K14], 'g.')
legend('kwadrat','kolo', 'trojkat');
hold off;
figure;

ISd=imread("strzalka.png");
ISd=imbinarize(ISd);
IMd=imread("strzalkaM.png");
IMd=imbinarize(IMd);
IDd=imread("strzalkaD.png");
IDd=imbinarize(IDd);
IPd=imread("strzalkaP.png");
IPd=imbinarize(IPd);

ITs=imtranslate(ISd, [10 10]);
imwrite(ITs, 'strzalkatranslate.png');


cent = regionprops(ISd,'perimeter');
Sd = cat(1, cent.Perimeter);

Area = regionprops(ISd,'Area');
Ld = cat(1, Area.Area);

cent = regionprops(IMd,'perimeter');
S1d = cat(1, cent.Perimeter);

Area = regionprops(IMd,'Area');
L1d = cat(1, Area.Area);

cent = regionprops(IDd,'perimeter');
S2d = cat(1, cent.Perimeter);

Area = regionprops(IDd,'Area');
L2d = cat(1, Area.Area);

cent = regionprops(IPd,'perimeter');
S3d = cat(1, cent.Perimeter);

Area = regionprops(IPd,'Area');
L3d = cat(1, Area.Area);

cent = regionprops(ITs,'perimeter');
S4d = cat(1, cent.Perimeter);

Area = regionprops(ITs,'Area');
L4d = cat(1, Area.Area);



Mzd=2*sqrt(pi*Sd)/Ld

Md=(Ld/(2*sqrt(pi*Sd)))-1

Kd=(4*pi*Sd)/(Ld*Ld)


Mz1d=2*sqrt(pi*S1d)/L1d

M1d=(L1d/(2*sqrt(pi*S1d)))-1

K1d=(4*pi*S1d)/(L1d*L1d)

Mz2d=2*sqrt(pi*S1d)/L2d

M2d=(L2d/(2*sqrt(pi*S2d)))-1

K2d=(4*pi*S2d)/(L2d*L2d)

Mz3d=2*sqrt(pi*S3d)/L3d

M3d=(L3d/(2*sqrt(pi*S3d)))-1

K3d=(4*pi*S3d)/(L3d*L3d)

Mz4d=2*sqrt(pi*S4d)/L4d

M4d=(L4d/(2*sqrt(pi*S4d)))-1

K4d=(4*pi*S4d)/(L4d*L4d)

X=[0 0.06 0.12 0.18 0.24 0.30 0.36 0.42 0.50 0.6 0.68 0.76 0.82 0.9 1]
Y=[Md M1d M2d M3d M4d Mzd Mz1d Mz2d Mz3d Mz4d Kd K1d K2d K3d K4d]

zestawdanych1=[M M1 M2 M3 M4 Mz Mz1 Mz2 Mz3 Mz4 K K1 K2 K3 K4];
zestawdanych2=[M5 M6 M7 M8 M9 Mz5 Mz6 Mz7 Mz8 Mz9 K5 K6 K7 K8 K9];
zestawdanych3=[M10 M11 M12 M13 M14 Mz10 Mz11 Mz12 Mz13 Mz14 K10 K11 K12 K13 K14];
color=[];
for i=1:15
c=knnmoje(X(i),Y(i), zestawdanych1,zestawdanych2,zestawdanych3)
color=[color c];
end

plot(X,Y, 'm.');
figure;
hold on;
plot([0 0.06 0.12 0.18 0.24 0.30 0.36 0.42 0.50 0.6 0.68 0.76 0.82 0.9 1], [M M1 M2 M3 M4 Mz Mz1 Mz2 Mz3 Mz4 K K1 K2 K3 K4], 'b.');
plot([0 0.06 0.12 0.18 0.24 0.30 0.36 0.42 0.50 0.6 0.68 0.76 0.82 0.9 1], [M5 M6 M7 M8 M9 Mz5 Mz6 Mz7 Mz8 Mz9 K5 K6 K7 K8 K9], 'r.');
plot([0 0.06 0.12 0.18 0.24 0.30 0.36 0.42 0.50 0.6 0.68 0.76 0.82 0.9 1], [M10 M11 M12 M13 M14 Mz10 Mz11 Mz12 Mz13 Mz14 K10 K11 K12 K13 K14], 'g.');
plot(X(1),Y(1), strcat(color(1),color(2)));
plot(X(2),Y(2), strcat(color(3),color(4)));
plot(X(3),Y(3), strcat(color(5),color(6)));
plot(X(4),Y(4), strcat(color(7),color(8)));
plot(X(5),Y(5), strcat(color(9),color(10)));
plot(X(6),Y(6), strcat(color(11),color(12)));
plot(X(7),Y(7), strcat(color(13),color(14)));
plot(X(8),Y(8), strcat(color(15),color(16)));
plot(X(9),Y(9), strcat(color(17),color(18)));
plot(X(10),Y(10), strcat(color(19),color(20)));
plot(X(11),Y(11), strcat(color(21),color(22)));
plot(X(12),Y(12), strcat(color(23),color(24)));
plot(X(13),Y(13), strcat(color(25),color(26)));
plot(X(14),Y(14), strcat(color(27),color(28)));
plot(X(15),Y(15), strcat(color(29),color(30)));
legend('kwadrat','kolo', 'trojkat');
hold off;
figure;
hold on;
plot([0 0.06 0.12 0.18 0.24 0.30 0.36 0.42 0.50 0.6 0.68 0.76 0.82 0.9 1], [M M1 M2 M3 M4 Mz Mz1 Mz2 Mz3 Mz4 K K1 K2 K3 K4], 'b.');
plot([0 0.06 0.12 0.18 0.24 0.30 0.36 0.42 0.50 0.6 0.68 0.76 0.82 0.9 1], [M5 M6 M7 M8 M9 Mz5 Mz6 Mz7 Mz8 Mz9 K5 K6 K7 K8 K9], 'r.');
plot([0 0.06 0.12 0.18 0.24 0.30 0.36 0.42 0.50 0.6 0.68 0.76 0.82 0.9 1], [M10 M11 M12 M13 M14 Mz10 Mz11 Mz12 Mz13 Mz14 K10 K11 K12 K13 K14], 'g.');
plot(X(6),Y(6), strcat(color(11),color(12)));
plot(X(7),Y(7), strcat(color(13),color(14)));
plot(X(8),Y(8), strcat(color(15),color(16)));
plot(X(9),Y(9), strcat(color(17),color(18)));
plot(X(10),Y(10), strcat(color(19),color(20)));
plot(X(11),Y(11), strcat(color(21),color(22)));
plot(X(12),Y(12), strcat(color(23),color(24)));
plot(X(13),Y(13), strcat(color(25),color(26)));
plot(X(14),Y(14), strcat(color(27),color(28)));
plot(X(15),Y(15), strcat(color(29),color(30)));
legend('kwadrat','kolo', 'trojkat');
hold off;
figure;
hold on;
plot(X(6),Y(6), 'm.');
plot(X(7),Y(7), 'm.');
plot(X(8),Y(8), 'm.');
plot(X(9),Y(9), 'm.');
plot(X(10),Y(10), 'm.');
plot(X(11),Y(11), 'm.');
plot(X(12),Y(12),'m.' );
plot(X(13),Y(13),'m.' );
plot(X(14),Y(14), 'm.');
plot(X(15),Y(15),'m.' );
