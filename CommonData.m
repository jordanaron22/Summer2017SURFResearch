function CommonDataMatrix = CommonData (dataMatrix, rowMatrix)
    %Need to do [C ia ib] = intersect(a,b)
    %Sample input is CommonDataMatrix = CommonData(a, ia);
    sizeOfRow = length(rowMatrix);
    sizeOfData = size(dataMatrix,2);

    %CommonDataMatrix = zeros(sizeOfRow,sizeOfData);
    CommonDataMatrix = [];
    for i = 1:sizeOfRow
        row = dataMatrix(rowMatrix(i),:);
        CommonDataMatrix(i,:) = row;
    end
end