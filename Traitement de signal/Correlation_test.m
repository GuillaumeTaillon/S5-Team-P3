clc
close all
clear all

n = [0:1:7];
seuil_bas = 0.7;
seuil_haut = 2-seuil_bas;
x = [1 1.5 2 0 -1 -1 2];
y = sin(n*pi/3.5);

correlation2 = xcorr(x,y);
correlation_original = xcorr(x,x);

n = 0:1:length(correlation2)-1;

c = max(correlation2)
c_original = max(correlation_original);

pourcentage_corr = c/c_original;

if pourcentage_corr > seuil_bas && pourcentage_corr < seuil_haut
    bon_sort = 1;
else
    bon_sort = 0;
end

figure()
stem(n,correlation2);

figure()
plot(0:1:length(x)-1,x)
hold on
plot(0:1:length(y)-1,y)









