function [topData, topGenes] = GetTopGenes(dataMatrix, geneMatrix, top)
    %Creates datamatrix with corresponding gene names of the top x
    %expressed genes (i.e. genes with the most number of reads).
    %Input is data matrix, gene list and the amount of top genes desired. 
    geneMatrix = geneMatrix(2:end,1);
    numberOfReads = sum(dataMatrix,2);
    [topExp origIndex] = sort(numberOfReads,'descend');
    
    topData = [];
    topGenes = [];
    
    for i = 1:top 
        topData = vertcat(topData,dataMatrix(origIndex(i),:));
        topGenes = vertcat(topGenes,geneMatrix(origIndex(i)));
    end
    
end
