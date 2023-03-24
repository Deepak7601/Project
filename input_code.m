clc;
clear all;
close all;

img1 = imread("cameraman.tif");
img2 = imread("testpat1.png");

[row1,column1] = size(img1);
[row2,column2] = size(img2);


temp_file = fopen("out.txt","wt");

for i = 1:row1
    for j = 1:column1
        temp = dec2hex(img1(i,j,:));
        temp1 = dec2hex(img2(i,j,:));
        fprintf(temp_file,"%s\n",temp,temp1);
    end
end

fclose(temp_file);