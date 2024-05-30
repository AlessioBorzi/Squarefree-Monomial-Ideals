--This code explicitly computes the associated graded ring of the Stanley Reisner ideal of the triangulation of P^2
--in particular the order of the w_i is specified

S' = QQ[y_1..y_6,t]
I' = ideal(y_1*y_2*y_5, y_1*y_3*y_4, y_1*y_2*y_6, y_1*y_3*y_6, y_1*y_4*y_5, y_2*y_3*y_4, y_2*y_3*y_5, y_2*y_4*y_6, y_3*y_5*y_6, y_4*y_5*y_6)

R = QQ[x_1..x_6,w_0..w_9, Degrees=>{0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1}]
f = map(S',R, toList(y_1..y_6) | apply(flatten entries gens I', i-> t*i))
T = ideal flatten entries mingens ker f
I = ideal(x_1*x_2*x_5, x_1*x_3*x_4, x_1*x_2*x_6, x_1*x_3*x_6, x_1*x_4*x_5, x_2*x_3*x_4, x_2*x_3*x_5, x_2*x_4*x_6, x_3*x_5*x_6, x_4*x_5*x_6);

S = R / (I+T)
