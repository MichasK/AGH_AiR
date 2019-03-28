function [dydt] = dyty(t,y,b,c,d)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

dydt = [y(2); -c*y(1)-d*y(1).^3-b*y(2)];
end