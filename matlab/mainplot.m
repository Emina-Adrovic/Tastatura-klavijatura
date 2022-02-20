try
    fclose(fid);
end

close all
clear all
clc

% fid = serial('/dev/ttyUSB3','BaudRate',921600,'InputBufferSize',2048);
fid = serial('/dev/ttyUSB0','BaudRate',921600,'InputBufferSize',2048);
fopen(fid);

fs = 16000;
N = 512;
y = zeros(1,N/2);
data = zeros(1,N);
    
cdata = 0;
k = 0;
ycum = 0;
while(1)

    flushinput(fid);
    fwrite(fid,cdata,'uint8');
    data = fread(fid,N,'uint8');
   
    
    for n=1:N/2
        tmp = double(data(2*n-1))*256+ double(data(2*n));
        
        if(tmp > 32768)
           y(n) = -1*(65535 - tmp + 1);
        else
           y(n) = tmp;
        end
    end
    

    M = round(N/4);
    subplot(3,1,1);
    y1 = 3*y(1:M)/32768;
    t = linspace(0,M/fs,M)*1000;
    plot(t,y1);
    xlabel('ms');
    ylabel('ORG V');
    axis([0 t(end) -4 4]);
    
    y1(1) = 0;
    subplot(3,1,2); 
    M = round(N/4);
    Y = abs(fft(y1))/M;
    M = round(N/8);
    Y = Y(1:M);
    f = linspace(0,fs/2,M)/1000;
    plot(f,Y,'r'); 
    ylabel('V/Hz'); 
    xlabel('kHz');
    axis([0 f(end) 0 1]);
    
    subplot(3,1,3);
    M = round(N/4);
    y2 = y(N/4+1:end)/100;
   
    M = round(N/8);
    Y = y2(1:M);
    f = linspace(0,fs/2,M)/1000;
    plot(f,Y,'r'); 
    ylabel('V/Hz'); 
    xlabel('kHz');
    axis([0 f(end) 0 5]);
    
  
    pause(0.01);
   
end




fclose(fid);


