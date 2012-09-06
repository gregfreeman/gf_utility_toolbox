function [ind]=mysub2ind(sz,sub)
offset=ones(size(sz));
for i=2:length(sz)
    offset(i)=offset(i-1)*sz(i-1);
end

ind=sum((sub-1).*offset)+1;
