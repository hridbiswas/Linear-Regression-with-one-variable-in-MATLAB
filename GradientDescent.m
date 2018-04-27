function[theta,J_history]=GradientDescent(x,y,theta,alpha,iterations)


m=length(y);
J_history=zeros(iterations,1);

for i=1:iterations
    h=x*theta;
    t1=theta(1)-alpha*(1/m)*sum(h-y);
    t2=theta(2)-alpha*(1/m)*sum((h-y).*x(:,2));
    theta(1)=t1;
    theta(2)=t2;
    J_history(i)=ComputeCost(x,y,theta);
end

end
    
    