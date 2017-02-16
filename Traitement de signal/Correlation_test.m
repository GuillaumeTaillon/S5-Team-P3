clc
close all
clear all

n = [0:1:39];
n2 = [0:1:79];
seuil_bas = 0.7;
seuil_haut = 2-seuil_bas;
x = [sin(n*pi/20) zeros(1,40)];
y = [zeros(1,20) 0.7*sin(n*pi/20) zeros(1,20)];

correlation_ref_bas = xcorr(x,seuil_bas*x);
correlation_ref_haut = xcorr(x,seuil_haut*x);
correlation2 = xcorr(x,y);

c_bas = sum(abs(correlation_ref_bas))
c_haut = sum(abs(correlation_ref_haut))
c = sum(abs(correlation2))

if c > c_bas && c < c_haut
    bon_sort = 1;
else
    bon_sort = 0;
end

figure()
plot(n2,x);
hold on
plot(n2,y);