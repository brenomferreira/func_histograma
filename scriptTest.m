%% script Teste
% Preparação
clc, close all, clear all; warning('off');

%% Load Arquivos
tif_1 = '_Arquives\Fig0222(a)(face).tif';
tif_2 = '_Arquives\Fig0222(b)(cameraman).tif';
tif_3 = '_Arquives\Fig0222(c)(crowd).tif';

I1 = double(imread(tif_1));
I2 = double(imread(tif_2));
I3 = double(imread(tif_3));

%% Show Arquivos
figure(1);
subplot(121)
imshow(uint8(I1))
colormap(gray), truesize, title(tif_1)
figure;
imshow(uint8(I2))
colormap(gray), truesize, title(tif_2)
figure;
imshow(uint8(I3))
colormap(gray), truesize, title(tif_2)

hist_1 = func_histograma(I1);
hist_2 = func_histograma(I2);
hist_3 = func_histograma(I3);

%% Comparação
figure
subplot(322);bar(hist_1),colormap(gray),title(tif_1);
subplot(324);bar(hist_2),colormap(gray),title(tif_2);
subplot(326);bar(hist_3),colormap(gray),title(tif_3);

subplot(321); imshow(uint8(I1)); colormap(gray), truesize, title(tif_1);
subplot(323); imshow(uint8(I2)); colormap(gray), truesize, title(tif_2);
subplot(325); imshow(uint8(I3)); colormap(gray), truesize, title(tif_3);
