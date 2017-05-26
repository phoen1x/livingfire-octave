%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This source code based on work of Josh Meyer
% https://www.facebook.com/JoshuaEMeyer
% who wrote an article about imaging a Klein bottle with MathLab
% http://jmeyersuniverse.tumblr.com/post/96146559649/imaging-a-klein-bottle-with-matlab
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% set up system
r = 2.5;
l = linspace(0,2*pi);
m = linspace(0,2*pi);
[theta,phi] = meshgrid(l,m);
X = cos(theta).*(r+cos(theta/2).*sin(phi) - sin(theta/2).*sin(2*phi));
Y = sin(theta).*(r+cos(theta/2).*sin(phi) - sin(theta/2).*sin(2*phi));
Z = sin(theta/2).*sin(phi)+cos(theta/2).*sin(2*phi);

%%% draw
vrml = vrml_surf(X,Y,Z)
save_vrml('kleinBottleFigure8Immersion_vrml.wrl',vrml)
