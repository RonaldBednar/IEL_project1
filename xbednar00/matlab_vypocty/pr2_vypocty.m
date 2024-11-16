%priklad 2, zadanie C
U = 200;R1 = 70;R2 = 220;R3 = 630;R4 = 240;R5 = 450;R6 = 200;

R23 = R2 + R3;
R123 = R1*R23/(R1+R23);
R1234 = R123+R4;
Ri = R1234*R5/(R1234+R5);

R45 = R4+R5;
REKV = R1 + (R23 * R45)/(R23 + R45);
I = U/REKV;
UR45=U-I*R1;
IR45=UR45/R45;
Ui=IR45*R5;

IR6=Ui/(Ri+R6);
UR6=IR6*R6;

fprintf('R6 = %.4fV, IR6 = %.4fA\n',UR6, IR6);

