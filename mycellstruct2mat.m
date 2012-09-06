
function m = mycellstruct2mat(c)
d=size(c);
n=numel(c);
m(d(:))=struct;
% fields={};
% for i=1:n
%     fields=setdiff(fields,fieldnames(c{i}));   
%     for k=1:length(newfields)
%         m(i).(newfields{k})=c{i}.(newfields{k});
%     end
%     m(i)=orderfields(c{i});    
% end
% for i=1:n
%     newfields=setdiff(fieldnames(c{i}),fieldnames(m));   
%     for k=1:length(newfields)
%         m(i).(newfields{k})=c{i}.(newfields{k});
%     end
%     m(i)=orderfields(c{i});    
% end
for i=1:n
    fields=fieldnames(c{i});
    for k=1:length(fields)
        m(i).(fields{k})=c{i}.(fields{k});
    end
end
