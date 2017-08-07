function RPX = ReadsPer(dataMatrix, factor)

    sizeArray = size(dataMatrix);
    RPX = dataMatrix;
    totCount = [];
    for i = 1:sizeArray(2)
        count = 0;
        for j = 1:sizeArray(1)
            count = count + dataMatrix(j,i);
        end
        totCount = horzcat(totCount,count);
    end
    
    readsPerCount = totCount/factor;
    
    
     for i = 1:sizeArray(2)
        for j = 1:sizeArray(1)
            RPX(j,i) = dataMatrix(j,i)/readsPerCount(i);
        end
    end
    
end