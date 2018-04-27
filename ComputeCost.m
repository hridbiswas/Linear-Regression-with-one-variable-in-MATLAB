function J=ComputeCost(x,y,theta)

m=length(y);
%compute the hypothesis matrix(vector)
h=x*theta; %
%calculate the cost
J=1/(2*m)*(sum(h-y).^2);
end