% combine figs into a single figure as subplots

% Load saved figures
c = hgload('pspectrum.fig');
k = hgload('fft.fig');
% Prepare subplots
figure
h(1) = subplot(1,2,1);
xlim([0 100]);
xlabel('Frequency (Hz)');
ylabel('Power Spectrum (dB)');
text(90,-110,'a)');

h(2) = subplot(1,2,2);
xlim([0 0.1]);
xlabel('Frequency (Hz)');
ylabel('Power Spectrum (dB)');
text(0.09,-75,'b)');

% Paste figures on the subplots
copyobj(allchild(get(c,'CurrentAxes')),h(1));
copyobj(allchild(get(k,'CurrentAxes')),h(2));
% Add legends
% l(1) = legend(h(1),'a)');
% l(2) = legend(h(2),'b)');