[xm,fv]=PSO(@fitness,40,2,2,0.5,100,30);
for i=1:30
    s(i)=0.;
end
for i=1:30
     
    F=0;
    for j=1:30
        F=F+xm(i)^2+xm(i);
    end
    s(i)=F;
end
plot(xm,s,'*')