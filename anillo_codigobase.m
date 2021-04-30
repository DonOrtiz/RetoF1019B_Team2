clc;
clear;
%Declaramos constantes
r=1.1; q=1; k=9e9; N=25;
%Donde almacenaremos el campo
Ex=0; Ey=0; Ez=0;
%Generamos la malla para graficar
V1=linspace(-2*r,2*r,6);
V2=linspace(-2*r,2*r,6);
V3=linspace(-2*r,2*r,6);
[X,Y,Z]=meshgrid(V1,V2,V3);
%Generamos el vector theta
theta=linspace(0,2*pi*(N-1)/N,N);
%Declaramos la función de distancia
F_R=@(x,y,z,w) (sqrt(((x-r*cos(w)).^2)+((y-r*sin(w))).^2+(z.^2))).^3;
%Generamos los valores usando el ciclo
for i = 1:N
    Ex=Ex + (k*q).*(X-r*cos(theta(i)))./(F_R(X,Y,Z,theta(i)));
    Ey=Ey + (k*q).*(Y-r*sin(theta(i)))./(F_R(X,Y,Z,theta(i)));
    Ez=Ez + (k*q).*(Z)./(F_R(X,Y,Z,theta(i))); 
end
%Graficamos
quiver3(X,Y,Z,Ex,Ey,Ez,1.2)
hold on
plot(r.*cos(theta),r.*sin(theta))







