--this is a monomial ideal I =(m1,..,m5) such that m1m2 = m3m4m5
R = QQ[x_1 .. x_6];
m_1 = x_1*x_2*x_3; m_2 = x_4*x_5*x_6; m_3 = x_1*x_4; m_4 = x_2*x_5; m_5 = x_3*x_6;
I = ideal(m_1,m_2,m_3,m_4,m_5);
