clear all
close all
clc

%wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
% Generate FFT 64 DIT Radix 2 Twiddle factors in *.h file 
%wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww

NFFT = 64;                                                  % number of points


L = NFFT;
M = 0;														% number of IFFT iterations
while(L > 1)

    M = M + 1;
    L = floor(L/2);
end

% Calculate twiddle factors
Wr = single(zeros(1,NFFT));
Wi = single(Wr);
n = 1;
K = 1;
for m=0:(M-1)
    L = 2^(m+1);
    for k=0:(K-1)
        Wr(n) = cos(2*pi*k/L);
        Wi(n) = sin(2*pi*k/L);
%         [n-1 k L Wr(n) Wi(n)]
        n = n + 1;
    end
    K = K*2;
end
	


% generate reverse bit matrix
RBM = zeros(1,NFFT);

for k=0:(NFFT-1)
    tmp = dec2bin(k,M);
    tmp = fliplr(tmp);
    RBM(k+1) = bin2dec(tmp);
end



n = 1;
nmax = 8;
fid = fopen('fft64.h','w');
fprintf(fid,'#ifndef __FFT256_H\n');
fprintf(fid,'#define __FFT256_H\n\n');
fprintf(fid,'#include "arm_math.h"\n');
fprintf(fid,'#define NFFT_DAC       64\n\n');

fprintf(fid,'extern const float32_t Wr_DAC[NFFT_DAC];\n');
fprintf(fid,'extern const float32_t Wi_DAC[NFFT_DAC];\n');
fprintf(fid,'extern const uint16_t RBM_DAC[NFFT_DAC];\n');
fprintf(fid,'\n\n#endif\n');
fclose(fid);



fid = fopen('fft64.c','w');
fprintf(fid,'#include "fft64.h"\n');
fprintf(fid,'///wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww\n');
fprintf(fid,'/// %s\n',date);
fprintf(fid,'/// FFT DIT Radix 2 Twiddle factors W for NFFT = %d\n',uint16(NFFT));
fprintf(fid,'///wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww\n');
fprintf(fid,'const float32_t Wr_DAC[NFFT_DAC] = {\n');
for k=1:NFFT
    
    if(k<NFFT)
        if(Wr(k) >= 0)
            fprintf(fid,' %.6f,',Wr(k));
        else
            fprintf(fid,'%.6f,',Wr(k));
        end
        n = n + 1;
        if(n > nmax)
            fprintf(fid,'\n');
            n = 1;
        end
    else
        if(Wr(k) >= 0)
            fprintf(fid,' %.6f};',Wr(k));
        else
            fprintf(fid,'%.6f};',Wr(k));
        end
    end
end

n = 1;
fprintf(fid,'\n\nconst float32_t Wi_DAC[NFFT_DAC] = {\n');
for k=1:NFFT
    
    if(k<NFFT)
        if(Wi(k) >= 0)
            fprintf(fid,' %.6f,',Wi(k));
        else
            fprintf(fid,'%.6f,',Wi(k));
        end
        n = n + 1;
        if(n > nmax)
            fprintf(fid,'\n');
            n = 1;
        end
    else
        if(Wi(k) >= 0)
            fprintf(fid,' %.6f};',Wi(k));
        else
            fprintf(fid,'%.6f};',Wi(k));
        end
    end
end

n=1;
fprintf(fid,'\n\n\n');
fprintf(fid,'///wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww\n');
fprintf(fid,'/// FFT Reverse Bit Matrix for NFFT = %d\n',uint16(NFFT));
fprintf(fid,'///wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww\n');
fprintf(fid,'const uint16_t RBM_DAC[NFFT_DAC] = {\n');
for k=1:NFFT
    
    if(k<NFFT)
        if(RBM(k) >= 999)
            fprintf(fid,'%d,',uint16(RBM(k)));
        elseif(RBM(k) >= 99)
            fprintf(fid,' %d,',uint16(RBM(k)));
        elseif(RBM(k) >= 9)
            fprintf(fid,'  %d,',uint16(RBM(k)));
        else
            fprintf(fid,'   %d,',uint16(RBM(k)));
        end
        n = n + 1;
        if(n > nmax)
            fprintf(fid,'\n');
            n = 1;
        end
    else
        if(RBM(k) >= 999)
            fprintf(fid,'%d};',uint16(RBM(k)));
        elseif(RBM(k) >= 99)
            fprintf(fid,' %d};',uint16(RBM(k)));
        elseif(RBM(k) >= 9)
            fprintf(fid,'  %d};',uint16(RBM(k)));
        else
            fprintf(fid,'   %d};',uint16(RBM(k)));
        end
    end
end


fclose(fid);







