-- input an ideal I and an integer k, return the witness of the maximal ideal for I^k
-- the maximal ideal should be an associated prime of I^k
exponentMatrix = (I,k) -> (
    matrix apply( flatten entries gens (I^k), m -> flatten exponents m )
);


-- triangulation of the projective plane example

R = QQ[x_1,x_2,x_3,x_4,x_5,x_6];
I = ideal(x_1*x_2*x_5, x_1*x_3*x_4, x_1*x_2*x_6, x_1*x_3*x_6, x_1*x_4*x_5, x_2*x_3*x_4, x_2*x_3*x_5, x_2*x_4*x_6, x_3*x_5*x_6, x_4*x_5*x_6);
w = x_1*x_2*x_3*x_4*x_5*x_6;

-- w is a witness of M for I^2
I^2 : w
-- (w * x_1 * x_6) is a witness of M for I^3
-- basically w times any two distinct variables is a witness
I^3 : (w * x_1 * x_6)
-- it seems I^k : w_k = M, where w_k = w times any 2 + 3k variables such that one variable appears at least once?

-- the following ideal is an "I tilde" of I:
J = ideal (flatten entries gens I)_{0,1,5,7,8};
-- w is a witness for J^2
J^2 : w
-- w times a generator of J is a witness for J^3
J^3 : (w * x_1 * x_2 * x_5)
J^3 : (w * x_1 * x_3 * x_4)
J^3 : (w * x_2 * x_3 * x_4)

-- interestingly enough, J^(k+1) : J = J^k for k up to 15 (so maybe it is Ratliff?)

-- Now let
J = I^3 : I;
-- witnesses of J are:
J : x_2*x_3*x_4*x_5*x_6
-- the element in J not in I^2 is w!
w % I^2
w% J
-- in particular this means that there is a monomial m in I such that w*m is in I^3:
w * I_1 == I_3 * I_4 *I_5
