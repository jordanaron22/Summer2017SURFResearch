function totCount = createZeroGraphs(data)
    %Plots percent zero against number of genes.  
    %Type "hold on" between function calls if you want to plot
    %multiple graphs in the same window 
    totCount = RealPercentZero(data);
    a = sort(totCount);
    plot(a)
    view(-90,90)
    set(gca,'YDir','reverse')
    xlabel('Number of Genes')
    ylabel('Percent Zero')
end