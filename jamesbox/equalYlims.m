function equalYlims(nPlots,nRows,nColumns)

for i = 1:nPlots;
    subplot(nRows,nColumns,i);
    ylims(i,:) = get(gca,'ylim');
end

for i = 1:nPlots;
    subplot(nRows,nColumns,i);
    ylim([min(ylims(:,1)) max(ylims(:,2))])
end