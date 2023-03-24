clc;
clear all;
close all;

% Open the file for reading
fileID = fopen('output.txt', 'r');

% Read the data from the file
A = fscanf(fileID, '%x');

% Close the file
fclose(fileID);

% Reshape the data into a 256x256 matrix
B = reshape(A, [256 256]);

% Transpose the matrix to get the correct orientation
B = B';

% Display the matrix as an image
imshow(uint8(B));

%{
% Open the file for reading
fileID = fopen('input.txt', 'r');

% Read the data from the file
A = fscanf(fileID, '%d');

% Close the file
fclose(fileID);

% Reshape the data into a 256x256 matrix
B = reshape(A, [256 256]);

% Transpose the matrix to get the correct orientation
B = B';

% Display the matrix as an image
imshow(uint8(B));
%}
