function totCount = Count2Graph(dataMatrix, nbins, log, type)
    %Outputs different histograms. nbins is the number of bins for
    %histogram.  If log is 1 then the logarithm of the data is plotted.  If
    %type is 1 plots the amount of reads (i.e. total mRNA found) per cell and if type is
    %2 plots number of zeros per cell. Y axis will be number of cells and X
    %axis will be either amount of reads (type 1) or number of zeros (type
    %2)
    sizeArray = size(dataMatrix);
    count = 0;
    totCount = [];
    for i = 1:sizeArray(2)
        count = 0;
        for j = 1:sizeArray(1)
            if type == 1
                if dataMatrix(j,i) ~= 0
                    count = count + dataMatrix(j,i);
                end
            end
            
            if type == 2
                if dataMatrix(j,i) == 0
                    count = count + 1;
                end
            end

            
        end
        if log == 1
            count = log2(count);
        end
        totCount = horzcat(totCount,count);
    end
    hist (totCount, nbins)
end