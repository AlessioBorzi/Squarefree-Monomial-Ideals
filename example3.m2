needsPackage "Graphs"
G = graph {{1,2},{1,5},{1,9},{1,12},{2,3},{2,6},{2,10},{3,4},{3,7},{3,11},{4,8},{4,12},{4,9},{5,6},{5,9},{5,8},{6,7},{6,10},{7,8},{7,11},{8,12},{9,10},{10,11},{11,12}}
I = coverIdeal G
I^4 : I == I^3
S = associatedGradedRing I
H = ideal(0_S) : ideal(toList(w_0 .. w_(15))


i15 : ideal(0_S) : ideal(toList(w_0 .. w_((#flatten entries gens I)-1)))

             2 2 2  2  2
o15 = ideal(x x x  x  w  )
             4 7 11 12 15
