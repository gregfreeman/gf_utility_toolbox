cd C:\Development\Contracts\RFCode2\CompressiveSensing\trunk\NSS_reconstruction\plots

filename=strrep(filename,'.','_');
pathTool='C:\Program Files\PDFCreator\PDFCreator.exe';
system(sprintf('"%s" /IF"%s.ps" /OF"%s.pdf"',pathTool,filename,filename));
delete(sprintf('%s.ps',filename));
system ('"C:\Program Files\PDFCreator\PDFCreator.exe" /NOSTART /NoProcessing /PF"gradient_histogram_file4.pdf"')
system ('"C:\Program Files\PDFCreator\PDFCreator.exe" /NOSTART /NoProcessing /PF"gradient_histogram_file6.pdf"')
system ('"C:\Program Files\PDFCreator\PDFCreator.exe" /NOSTART /NoProcessing /PF"gradient_histogram_file7.pdf"')
system ('"C:\Program Files\PDFCreator\PDFCreator.exe" /NOSTART /PF"gradient_histogram_file10.pdf"')


/PF<filename>

cd C:\Development\Contracts\RFCode2\CompressiveSensing\trunk\NSS_reconstruction\plots
