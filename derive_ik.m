syms a b c d e f pi t1 t2 t3;

A1 = dh_kuchenbe(0, pi/2, a, t1);
A2 = dh_kuchenbe(c, 0, -b, t2);
A3 = dh_kuchenbe(0, -pi/2, -d, t3);
A4 = dh_kuchenbe(0, pi/2, e, 0);

T4_0 = A1*A2*A3*A4;

a = 13.0;
b = 2.5;
c = 8.0;
d = 2.5;
e = 8.0;
t1 = 0.0;

T4_0 = eval(T4_0)

x = simplify(T4_0(13))
y = simplify(T4_0(14))
z = simplify(T4_0(15))