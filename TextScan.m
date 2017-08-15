fid = fopen('SmartSeq.txt','r')
tline = fgetl(fid);
fclose(fid);
sampleNames = cellstr(strvcat(strsplit(tline,'\t')));
totSamps = length(sampleNames); 
fid = fopen('SmartSeq.txt','r');
 C = textscan(fid, [repmat('%f',1,totSamps)], 'Delimiter', '\t', 'HeaderLines',0);
fclose(fid);
ncounts = [C{1:end}]; 