function F = fitness( x )
%F Summary of this function goes here
%   Detailed explanation goes here
F=0;
for i=1:30
    F=F+x(i)^2+x(i);
 
end