function [g,logg] = laplacecomp(w,X,t)
% Computes g and log g for the laplace model introduced in the lecture.
ss = 10; % Prior variance
% Evaluate log prior
logg = -(1/(2*ss))*w'*w;
% Compute P
P = 1./(1+exp(-X*w));
logl = sum(t.*log(P) + (1-t).*log(1-P));
logg = logg + logl;
g = exp(logg);
