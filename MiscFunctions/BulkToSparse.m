function SparseBulkRNA = BulkToSparse(BulkRNA, cutOff)
    %Takes bulk data matrix and turns it into a sparse one by randomly
    %removing entries.  Enter cutoff as a whole number.  A cutoff of 15
    %means a 15% sparse matrix (assuming the matrix is originally 0% sparse
    sizeArray = size(BulkRNA);
    numCol = sizeArray(2);
    numRow = sizeArray(1);
    r = randi([0 100],numRow,numCol);
    SparseBulkRNA = BulkRNA;
     for i = 1:numRow
            for j = 1:numCol
                if r(i,j) < cutOff
                    SparseBulkRNA(i,j) = 0;
                end
            end
     end
end

 
 
 
