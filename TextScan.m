#Change 'SmartSeq' to what is being imported in the below line
fid = fopen('SmartSeq.txt','r')
tline = fgetl(fid);
fclose(fid);
sampleNames = cellstr(strvcat(strsplit(tline,'\t')));
totSamps = length(sampleNames); 
#Change 'SmartSeq' to what is being imported in the below line
fid = fopen('SmartSeq.txt','r');
C = textscan(fid, [repmat('%f',1,totSamps)], 'Delimiter', '\t', 'HeaderLines',0);
fclose(fid);
%Change ncounts to outpute name.  i.e. 'OldESGeneNames', 'NewESGeneNames', 'SmartSeqNames', or 'SmartSeq'
ncounts = [C{1:end}]; 