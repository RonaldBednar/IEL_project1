%priklad 3, zadanie D
u1 = 4;u2 = 5;R1 = 13;R2 = 15;L1 = 180 * 10^(-3);L2 = 90 * 10^(-3);C1 = 210 * 10^(-6);C2 = 75 * 10^(-6);f = 85;

w = 2*pi*f;
ZL1 = 1j*w*L1;
ZL2 = 1j*w*L2;
ZC1 = -(1j/(w*C1));
ZC2 = -(1j/(w*C2));

A = [R2+R1+ZC1+ZL1 -ZC1-R1 -R2;-R1-ZC1 ZC1+R1+ZL2 -ZL2;-R2 -ZL2 ZL2+R2+ZC2];

U = [0;u1;-u2];

P = inv(A) * U;
Ia = P(1);
Ib = P(2);
Ic = P(3);

Il2 = (Ib-Ic);

ul2 = ZL2 *Il2;
UL2 = abs(ul2);
theta = rad2deg(atan(imag(ul2)/real(ul2))) + "°";

fprintf("UL2 = %.4fV, theta = %s\n",UL2,theta);