function[totCount] = RealPercentZero(dataMatrix) 

    sizeArray = size(dataMatrix);
    numCol = sizeArray(2);
    numRow = sizeArray(1);

    
    numberOfZeros = 0;
    count = 0;
    totCount = [];
    for i = 1:numRow
        for j = 1:numCol
            if dataMatrix(i,j) == 0
                count = count + 1;
                numberOfZeros = numberOfZeros + 1;
            end
        end
        count = count/numCol;
        totCount = horzcat(totCount,count);
        count = 0;
    end
    

    
    
    
end