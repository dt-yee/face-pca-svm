% visualize the eigen image
function visualize(B,K)
global imgrow;
global imgcol;
figure
img=zeros(imgrow,imgcol);
row = K / 5;
row = ceil(row);
for i=1:K
    img(:)=B(:,i);
    subplot(row,5,i);
    imshow(img,[])
end
end