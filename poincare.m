% Poincare section for the Duffing system.
clear
deq=inline('[x(2);x(1)-0.3*x(2)-(x(1))^3+0.5*cos(1.25*t)]','t','x');

options=odeset('RelTol',1e-4,'AbsTol',1e-4);
% Solve the ODE at specific values of time.
% Multiples of 2*pi take you to the Poincare section.
[t,xx]=ode45(deq,[0:(2/1.25)*pi:(4000/1.25)*pi],[1,0]);
% Plot the chaotic attractor.
plot(xx(:,1),xx(:,2),'.','MarkerSize',1)
fsize=15;
axis([-2 2 -2 2])
xlabel('x','FontSize',fsize)
ylabel('y','FontSize',fsize)
title('Poincare Section of the Duffing System')
% End of Program.
