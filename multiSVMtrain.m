%multi svm classifier

function[multiSVM] = multiSVMtrain(traindata,nclass,gamma,c)

for i=1:nclass-1
    for j=i+1:nclass
        X=[traindata(5*(i-1)+1:5*i,:);traindata(5*(j-1)+1:5*j,:)];
        Y=[ones(5,1);zeros(5,1)];
        multiSVM{i}{j} = svmtrain(X,Y,'Kernel_Function',@(X,Y) kfun_rbf(X,Y,gamma),'boxconstraint',c);
    end
end
end