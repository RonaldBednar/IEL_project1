%priklad 1, zadanie D
U1 = 105;U2 = 85;R1 = 420;R2 = 980;R3 = 330;R4 = 280;R5 = 310;R6 = 710;R7 = 240;R8 = 200;

R56 = (R5*R6)/(R5+R6);
R78 = R7 + R8;

RA = (R1*R2)/(R1+R2+R3);
RB = (R1*R3)/(R1+R2+R3);
RC = (R2*R3)/(R1+R2+R3);

RB56 = RB + R56;
RC4 = RC + R4;

RBC456 = (RB56*RC4)/(RB56+RC4);

REKV = RA + RBC456 + R78;
I = (U1+U2)/REKV;

URBC456 = I * RBC456;
URA = I * RA;

IRB56 = URBC456/RB56;
IRC4 = URBC456/RC4;

URC = IRC4 * RC;

UR2 = URA + URC;
IR2 = UR2/R2;

fprintf('UR2 = %.4fV, IR2 = %.4fA\n', UR2, IR2);