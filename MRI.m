function imputedMatrix = MRI(dataMatrix, failMatrix, reps)



    imputedMatrix = dataMatrix;
    sizeArray = size(dataMatrix);

    for i = 1:sizeArray(1)
        gene = dataMatrix(i,:);
        newGene = gene(gene~=0);
        for j = 1:sizeArray(2)
            holdingMat = zeros(1,reps);
            for k = 1:reps
                
                if dataMatrix(i,j) == 0 & sum(gene)~=0
                    if rand(1) < failMatrix(i,j)
                        randInd = randi(length(newGene));
                        holdingMat(k) = newGene(randInd);
                    else 
                        holdingMat(k) = 0;
                    end
                    
                else 
                    holdingMat(k) = dataMatrix(i,j);
                end
                
            end
            imputedMatrix(i,j) = median(holdingMat);
        end
    end
end