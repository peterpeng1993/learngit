
function mean = k_means_new   
for i=1:20;
    x1(i) = rand()*5;      
    y1(i) = rand()*5;    
    x2(i) = rand()*5 + 2; 
    y2(i) = rand()*5 + 2;  
end  
x = [x1,x2];  
y = [y1,y2];  
cities = [x;y];  
plot(cities(1,:),cities(2,:),'*');  
num = size(cities,2);     
m1 = round(rand()*num);     
m2 = round(rand()*num);  
while m1==m2               
    m2 = round(rand()*num);  
end                  
u1 = cities(:,m1);          
u2 = cities(:,m2);  
u_old = [u1,u2];  
u_new = [u2,u1];  
while u_old ~= u_new    
    u_old = u_new ;     
    for j=1:num       
        dis1 = norm(cities(:,j)-u1); 
        dis2 = norm(cities(:,j)-u2); 
        if dis1>=dis2;  
            c(j) = 2;    
        else c(j) = 1;  
        end  
    end  
    index1 = find(c==1);  
    index2 = find(c==2);   
    sum1 = sum(cities(:,index1),2);   
    sum2 = sum(cities(:,index2),2);  
    u1 = sum1/length(index1);     
    u2 = sum2/length(index2);     
    u_new = [u1,u2];         
end   
hold on,plot(cities(1,index1),cities(2,index1),'*');    
hold on,plot(cities(1,index2),cities(2,index2),'+');    
hold on,plot(u1(1),u1(2),'o',u2(1),u2(2),'o');  
mean = u_new;     