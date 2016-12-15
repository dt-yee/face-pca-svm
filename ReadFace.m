%%%%%input variables:
%flag = 0 as trainning set, flag = 1 as test set
%number of people for recognition

%%%%%output variables:
%realclass: (row=5*n_persons)*1 vector, the label for data set
%f_matrix: matrix with (row=5*n_person)*(column=112*92)
%everyline is a gary data of a face image


function [f_matrix, realclass] = ReadFace(n_persons, flag)
global imgrow;
global imgcol;
imgrow = 112;
imgcol = 92;


realclass = zeros(n_persons*5,1);
f_matrix = zeros(n_person*5, imgrow*imgcol);

for i = 1:n_persons
    imgpath = strcat('D:\face\att_faces\s',num2str(i),'\');
    curpath = imgpath;
    for j = 1:5
        if flag == 0
            curpath = strcat(curpath, num2str(j),'.pgm')
        else
            curpath = strcat(curpath, num2str(j+5),'.pgm')
        end
        
        realclass((i-1)*5+j) = i;
        img = imread(curpath);
        f_matrix((i-1)*5 + j,:) = img(:);
    end
end

end

