clc
close all
clear all

n = [0:1:7];
seuil_bas = 0.7;            %D�finition du seuil
seuil_haut = 2-seuil_bas;
x = [1 1.5 2 0 -1 -1 2];    %Signal de r�f�rence
y = [1 1.5 2 0 -1 -1 2];    %Signal � comparer

correlation2 = xcorr(x,y);  %Corr�lation entre les deux siganux
correlation_original = xcorr(x,x);  %Corr�lation du signal de r�f�rence avec lui-m�me

n = 0:1:length(correlation2)-1;

c = max(correlation2);                  %Valeur maximale de corr�lation
c_original = max(correlation_original); %Valeur maximale d'auto-corr�lation (100% de corr�lation)

pourcentage_corr = c/c_original;    %Calcul du pourcentage de corr�lation

if pourcentage_corr > seuil_bas && pourcentage_corr < seuil_haut
    bon_sort = 1;
    disp('Bon sort')
else
    bon_sort = 0;   %V�rification si le sort est r�ussi ou non
    disp('Mauvais sort')
end

figure()
stem(n,correlation2);

figure()
plot(0:1:length(x)-1,x)
hold on
plot(0:1:length(y)-1,y)









