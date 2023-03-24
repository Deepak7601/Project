clc
clear all
close all

% Load the image file
img = imread('testpat1.png');

[h,w] = size(img);

% Get the hexadecimal pixel values of the image
hex_pixels = dec2hex(img);


% Open the file for writing
fid = fopen('output.txt', 'w');



% Write the hexadecimal pixel values to the file
for i = 1:numel(hex_pixels)
    fprintf(fid,"%s\n", hex_pixels(i));
end

% Close the file
fclose(fid);
