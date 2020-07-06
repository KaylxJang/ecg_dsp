%make sure DSP Toolbox is downloaded for filterDesigner
%double click 'filter_vars.mat' to load into workspace
%make sure data is in path

signal = csvread('Lead II relax.csv');
tn = signal(:,1);
xn = signal(:,2);
Fs = 10000/3;

xfilter = filter(d,xn);     %Fc=25, order=7
xxfilter = filter(dd,xn);   %Fc=13, order=7
xxxfilter = filter(ddd,xn); %Fc=25, order=15

subplot(4,1,1);
plot(signal(:, 1), signal(:, 2))

xlabel('Time (seconds)')
ylabel('Volts (mV)')
grid on

subplot(4,1,2);
plot(tn,xfilter,'r');

xlabel('Time (seconds)')
ylabel('Volts (mV)')
grid on

subplot(4,1,3);
plot(tn,xxfilter,'g');

xlabel('Time (seconds)')
ylabel('Volts (mV)')
grid on

subplot(4,1,4);
plot(tn,xxxfilter,'c');

xlabel('Time (seconds)')
ylabel('Volts (mV)')
grid on