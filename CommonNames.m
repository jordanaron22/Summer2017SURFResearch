commonNames = [];
for i = 1:length(inidicesOldESGeneNames)
    commonNames = vertcat(commonNames,NewESGeneNames(indicesOldESGeneNames(i)));
end