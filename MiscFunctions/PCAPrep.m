function[genesc, ncounts] = PCAPrep(origMatrix, newData) 
    %genesc is the row and column names.  If you only have the gene names
    %and no cell names you actually dont need this function and can just
    %set genes to be the gene list and ncount to be the data matrix. Preps
    %data for PCA code.
    genesc = origMatrix(:,1); 
    genesc = genesc(2:end,:);

    ncounts = newData;
end