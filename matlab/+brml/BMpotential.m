function pot=BMpotential(W)
%BMPOTENTIAL unnormalised potential exp(s'*W*s) for binary s=0,1 and upper triangular W.
import brml.array;
N=size(W,1); c=0; W=double(W);
for i=1:N
    for j=i+1:N
        if W(i,j)~=0
            c=c+1;
            pot{c}=array([i j], [1 1;1 exp(W(i,j))]);
        end
    end
end
for i=1:N
    c=c+1;
    pot{c}=array(1,[1 exp(W(i,i))]');
end