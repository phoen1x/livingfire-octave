%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This source code based on work of tumblr user jmeyersuniverse
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
surf(X,Y,Z)

%%% set colors of plot
% -- red to yellow -> "autumn"
% -- copper colors -> "copper"
% -- white to red -> "hot"
% -- white to blue -> "ocean"
% -- red to blue -> "jet"
colormap("jet")

%%% rotate plot
view(184, 60)

%%% set labels and grid
title('Klein bottle - Figure 8 Immersion')
xlabel('x'), ylabel('y'), zlabel('z')
axis on, grid on
