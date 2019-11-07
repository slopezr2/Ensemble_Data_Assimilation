%=====Gradient Descend Minimization Mehtod===
function [alpha_opt,niter,J,gnorm]=Gradient_Descend(alpha0)

% termination tolerance
tol = 1e-6;
% maximum number of allowed iterations
maxiter = 300;
% minimum allowed perturbation
dxmin = 1e-6;
% step size ( 0.33 causes instability, 0.2 quite accurate)
alpha = 1e-2;
% initialize gradient norm, optimization vector, iteration counter, perturbation
gnorm = inf; 
niter = 0; 
dx = inf;
x=alpha0;
% gradient descent algorithm:
while and(gnorm>=tol, and(niter <= maxiter, dx >= dxmin))
    % calculate gradient:
    [J(niter+1),g]=costfunction(x);
    gnorm(niter+1) = norm(g);
    % take step:
    xnew = x - alpha*g;
    % check step
    if ~isfinite(xnew)
        display(['Number of iterations: ' num2str(niter)])
        error('x is inf or NaN')
    end
    % plot current point
%     plot([x(1) xnew(1)],[x(2) xnew(2)],'ko-')
%     refresh
    % update termination metrics
    niter = niter + 1;
    dx = norm(xnew-x);
    x = xnew;
    
end
alpha_opt = x;
% [J,g]=costfunction(x);
% fopt = J;
 niter = niter - 1;
