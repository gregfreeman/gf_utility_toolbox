function [ data ] = loadJson( filename )
%LOADJSON loads a json file
%  [ data ] = loadJson( filename )
%   Function stores json in memory so won't work well for large files

fid=fopen(filename,'r');
if fid>0
    str='';
    while ~feof(fid)
        line=fgets(fid);
        str=[str line];
    end
    fclose(fid);
    data=parse_json(str);
else
    error('cannot create %s',filename);
end


