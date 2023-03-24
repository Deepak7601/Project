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

% Display the matrix
disp(B);
