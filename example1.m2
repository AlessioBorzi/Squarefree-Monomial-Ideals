-- triangulation of the projective plane example

R = QQ[x_1,x_2,x_3,x_4,x_5,x_6];
I = ideal(x_1*x_2*x_5, x_1*x_3*x_4, x_1*x_2*x_6, x_1*x_3*x_6, x_1*x_4*x_5, x_2*x_3*x_4, x_2*x_3*x_5, x_2*x_4*x_6, x_3*x_5*x_6, x_4*x_5*x_6);
S = associatedGradedRing I;
M = ideal(toList(w_0..w_9));
H = ideal(0_S) : M
