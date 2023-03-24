clc;
clear all;
close all;

image = imread("cameraman.tif");

imshow(image);

[row,column] = size(image);

temp_file = fopen("output.txt","wt");
temp_file1 = fopen("input.txt","wt");

for i = 1:row
    for j = 1:column
        temp = dec2hex(image(i,j,:));
        temp1 = hex2dec(temp);
        fprintf(temp_file,"%s\n",temp);
        fprintf(temp_file1,"%d\n",temp1);
    end
end



fclose(temp_file);
fclose(temp_file1);