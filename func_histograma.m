function [ saida ] = func_histograma( I )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

i_max = max(max(I));

bits = floor(log2(i_max))+1;
text_bits = [num2str(bits) ' bits'];

[a b] = size (I);
L = a*b;

i_max = 2^bits -1;

histo = [];
for i = 0:i_max
    v = find(i==I);
    histo = [histo length(v)/L];
    v = 0;
end

max_norm = max(histo);
n = find(histo == max_norm);
text_n = ['[' num2str(n) '] mais signif'];

figure;
bar(histo);
text = [num2str(a) ' x '  num2str(b)];
title(['Histograma normalizado ' text ', [' text_bits '], ' text_n]);
ylabel('Amplitude normalizada');
xlabel('bits');
axis tight;
grid on;

saida = histo;

end

