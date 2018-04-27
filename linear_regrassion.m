clear all;
close all;
clc;

data=load('examples.txt');

x=data(:,1);
y=data(:,2);
m=length(y);
theta=zeros(2,1);
iterations=1000;
alpha=0.001;
plot(x,y,'rx','MarkerSize',10);
title('training examples');
xlabel('ppulation inn 10,000');
ylabel('profit')

%compute cost function
%hypothesis, hx=theta_1_x+theta_not
%adding ones column to x
x=[ones(m,1), data(:,1)];
J=ComputeCost(x,y,theta);

%running gradient descent
[theta,J_history]=GradientDescent(x,y,theta,alpha,iterations);


hold on;
plot(x(:,2),x*theta,'-');
legend('training samples','linear regression');
hold off









