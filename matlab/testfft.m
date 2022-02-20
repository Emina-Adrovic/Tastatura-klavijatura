clear all
close all
clc
x = mod([0:63]*32,256);
y=fft(x*3/4095); y(1:10).';
f = abs(y); f(1:10)/64.'