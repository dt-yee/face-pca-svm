% visualize the eigen image
function visualize(B)
global imgrow;
global imgcol;
figure
img=zeros(imgrow,imgcol);
for i=1:20
    img(:)=B(:,i);
    subplot(4,5,i);
    imshow(img,[])
end
end