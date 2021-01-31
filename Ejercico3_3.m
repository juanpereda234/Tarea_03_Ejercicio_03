%%
%Obteniendo x(n)
n1 = 0;
n2 = 6;
nd1 = 0;
nd2 = 6;
[muestra,x1] = UnitStep(n1,n2,nd1);
[n,x2] = UnitStep(n1,n2,nd2);
x = (6-n).*(x1-x2);
figure
stem(n,x,'filled')
grid on
title('x[n]')
%% Convoluciones
%primer convolución
ha = [0 1 2 3 2 1];
ya = conv(x,ha);
figure
stem([0:11],ya,'filled')
grid on
title('primer convolución')
%%
%segunda convolución
hb = [5 6 9 7];
yb = conv(x,hb);
figure
stem([0:9],yb,'filled')
grid on
title('segunda convolución')
%%
%Tercera convolción
hc = [1 2];
yc = conv(x,hc);
figure
stem([0:7],yc)
grid on
title('tercera convolución')