% first import the 2 datasets using File > Import Data and rename them km and kmp
% then paste the code below in Matlab

legendString = {['k-means (n=500'],	['k-means++ (n=500)']};

xBins = 449100:1100:558600;          					% Bin positions will be 0.5 apart
[n_km, x_km] = hist(km, xBins, 'k');       	% Histogram of km
[n_kmp, x_kmp] = hist(kmp, xBins, 'r');    	% Histogram of kmp

figure
hold on

plot(x_km, n_km/sum(n_km), 'k');          % km is black
plot(x_kmp, n_kmp/sum(n_kmp), 'r');

xlabel('RSS');
ylabel('Frequency');
legend(legendString,  'Location', 'NorthEast');
title('Comparison of k-means and k-means++')

hold off