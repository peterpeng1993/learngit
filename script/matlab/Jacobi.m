syms r l f
x=r*cos(l)*cos(f);
y=r*cos(l)*sin(f);
z=r*sin(l);
J=jacobian([x;y;z],[r l f]);