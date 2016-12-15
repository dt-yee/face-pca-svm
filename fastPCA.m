%input:
%A: sample matrix, everyline is a sample
%k: dimension reduce to k
%mA: mean(f_matrix), vector

%output:
%pcaA: sample in the low dimension space after reduction
%V: the basis vector of low dimension space

function [pcaA, V] = fastPCA(A,k,mA)
%number of input data
m = size(A,1);

%centralize the data
Z = (A-repmat(mA,m,1));

T = Z * Z'
%get the largest k eigenvalues and eigenvectors
[V1,D] = eigs(T,k);
%eigenvectors of covariance matrix
V= Z' *  V1;

%normalize the eigenvector
for i=1:k
    l=norm(V(:,i));
    V(:,i) = V(:,i)/l;
end

pcaA = Z * V;


end