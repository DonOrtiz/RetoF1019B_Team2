
%Variables fijas
k=9e9;
v=0.69;
const1=79;%3 variables pre establecidas
%Variables cambian
r1=0.01; %La app tiene que permitir cambiar este, el radio interior
r2=0.02; %La app tiene que permitir cambiar este, el radio exterior
long= 0.1; %Longitud del capacitor tambien se tiene que pedir
lg=(log(r2)-log(r1));

ld=[0];
la=[0.1];
y1=[];
x=1:1:100;

for i = (1:1:100)
    y1(i)=(const1*((ld(i)/(2*(k)*(lg)))))+((la(i)/(2*(k)*(lg))));
    ld(i+1)=ld(i)+(long/100);
    la(i+1)=((la(i))-(long/100));
end

plot(x,y1)






