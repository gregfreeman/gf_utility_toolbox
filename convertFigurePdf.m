function convertFigurePdf(filename)

if isempty(strfind(filename,':'))
    filename=[pwd '/' filename];
end
filename=strrep(filename,'.','_');

if exist('C:\Program Files\PDFCreator\PDFCreator.exe','file')
    pathTool='C:\Program Files\PDFCreator\PDFCreator.exe';
elseif exist('C:\Program Files (x86)\PDFCreator\PDFCreator.exe','file')
    pathTool='C:\Program Files (x86)\PDFCreator\PDFCreator.exe';
elseif exist('ps2pdf','file')
    warning('have not tested this yet');
    system(sprintf('ps2pdf "%s.ps" ',filename));    
    return 
else
    error('unable to find PDFCreator or ps2pdf')
end
result=system(sprintf('"%s" /IF"%s.ps" /OF"%s.pdf"',pathTool,filename,filename));
if result==0
    delete(sprintf('%s.ps',filename));
end

