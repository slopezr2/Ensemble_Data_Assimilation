function [f,g] = rosenbrockwithgrad(x)
global a
% Calculate objective f
f = 100*(x(2) - x(1)^2)^2 + (1-x(1))^a;

if nargout > 1 % gradient required
    g = [-400*(x(2)-x(1)^2)*x(1)-2*(1-x(1));
        200*(x(2)-x(1)^2)];
end