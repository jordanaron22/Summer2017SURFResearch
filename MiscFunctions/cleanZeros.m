function [cleanedData, cleanedGene] = cleanZeros(dataMatrix, geneList, percent)
    %Given data matrix, gene names for that matrix, and a cutoff.
    %Deletes rows (genes) if they have a high enough percent zero
    %Percent should be given in decimal form.  If percent is equal to 0.1
    %then all genes that are more than 10% zero are removed.  Line 8
    %removes the first line in the genes which is a common problem in
    %Matlab.  If the input is simply the genelist comment it out. 
    geneList = geneList(2:end);
    totCount = RealPercentZero(dataMatrix);
    cleanedData = [];
    cleanedGene = [];
    for i = 1:length(totCount)
        if totCount(i) < percent
            cleanedData = [cleanedData; dataMatrix(i,:)];
            cleanedGene = [cleanedGene; geneList(i,:)];
            
        end
    end
end

