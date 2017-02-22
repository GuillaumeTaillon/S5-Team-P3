clc
close all
clear all

n = [0:1:7];
seuil_bas = 0.7;            %Définition du seuil
seuil_haut = 2-seuil_bas;
x = [1 1.5 2 0 -1 -1 2];    %Signal de référence
y = [1 1.5 2 0 -1 -1 2];    %Signal à comparer

correlation2 = xcorr(x,y);  %Corrélation entre les deux siganux
correlation_original = xcorr(x,x);  %Corrélation du signal de référence avec lui-même

n = 0:1:length(correlation2)-1;

c = max(correlation2);                  %Valeur maximale de corrélation
c_original = max(correlation_original); %Valeur maximale d'auto-corrélation (100% de corrélation)

pourcentage_corr = c/c_original;    %Calcul du pourcentage de corrélation

if pourcentage_corr > seuil_bas && pourcentage_corr < seuil_haut
    bon_sort = 1;
    disp('Bon sort')
else
    bon_sort = 0;   %Vérification si le sort est réussi ou non
    disp('Mauvais sort')
end

figure()
stem(n,correlation2);

figure()
plot(0:1:length(x)-1,x)
hold on
plot(0:1:length(y)-1,y)









