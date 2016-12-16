%normaliza the data

%input:
%faceMat: image data
%lowvec: the min value
%upvec: the max value

function [scaledimage] = scaling(faceMat, lowvec, upvec)
upnew = 1;
lownew = -1;
[m,n] = size(faceMat)
scaledimage = zeros(m,n);
for i=1:m
    scaledimage(i,:) = lownew+(faceMat(i,:)-lowvec)./(upvec - lowvec)*(upnew-lownew)
end

end