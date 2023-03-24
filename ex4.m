clc;
clear all;
close all;

image = imread("cameraman.tif");

imshow(image);

[row,column] = size(image);

temp_file = fopen("output.txt","wt");

for i = 1:row
    for j = 1:column
        temp = dec2hex(image(i,j,:));
        fprintf(temp_file,"%s\n",temp);
    end
end

fclose(temp_file);