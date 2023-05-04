% Phase portrait for a nonautonomous system of ODEs.
% The Duffing system.
deq=inline('[x(2);x(1)-0.3*x(2)-(x(1))^3+0.5*cos(1.25*t)]','t','x');
% Set tolerances.
options=odeset('RelTol',1e-4,'AbsTol',1e-4);
% Use ode45, 0<t<200, initial value (x,y)=(1,0).
[t,xx]=ode45(deq,[0 1000],[1,0],options);
plot(xx(:,1),xx(:,2))
% Plot the trajectory.
fsize=15;
axis([-2 2 -2 2])
xlabel('x','FontSize',fsize)
ylabel('y','FontSize',fsize)
% End of Program.
