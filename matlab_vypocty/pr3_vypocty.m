%priklad 3, zadanie A
U = 120;I1 = 0.9;I2 = 0.7;R1 = 53;R2 = 49;R3 = 65;R4 = 39;R5 = 32;

I3 = U/R5;
G1 = 1/R1;
G2 = 1/R2;
G3 = 1/R3;
G4 = 1/R4;
G5 = 1/R5;

A = [-G1-G2 G2 0;G2 -G2-G3 G3;0 G3 -G3-G4-G5];
I = [-I1;-I2;I2-I3];
U = inv(A) * I;
Ua = U(1);
Ub = U(2);
Uc = U(3);
UR4 = Uc;
IR4 = UR4/R4;

fprintf('UR4 = %.4fV, IR4 = %.4fA\n', UR4, IR4);