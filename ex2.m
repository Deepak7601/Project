% Load two input images
img1 = imread('pears.png');
img2 = imread('testpat1.png');

% Call the Dadda multiplier function
output_image = dadda_multiplier(img1, img2);

% Display output image
imshow(output_image);

% Define the Dadda multiplier function
function output_image = dadda_multiplier(img1, img2)
    % Get size of input images
    [m, n] = size(img1);
    [p, q] = size(img2);

    % Pad input images with zeros to make them the same size
    if m > p
        img2 = padarray(img2, [m-p, 0], 'post');
    elseif m < p
        img1 = padarray(img1, [p-m, 0], 'post');
    end

    if n > q
        img2 = padarray(img2, [0, n-q], 'post');
    elseif n < q
        img1 = padarray(img1, [0, q-n], 'post');
    end

    % Initialize variables
    sum = zeros(m+n-1, m+n-1);
    carry = zeros(m+n-1, m+n-1);
    prod = zeros(m+n-1, m+n-1);

    % Perform Dadda multiplier algorithm
    for i = 1:m
        for j = 1:n
            for k = 1:p
                for l = 1:q
                    temp = img1(i,j) * img2(k,l);
                    [prod(i+k-1, j+l-1), carry(i+k-1, j+l-1)] = dadda_adder(temp, prod(i+k-1, j+l-1));
                end
            end
        end
    end

    % Convert output to uint8 format
    output_image = uint8(prod);

    % Function to implement Dadda adder
    function [sum, carry_out] = dadda_adder(a, b)
        carry_in = 0;
        sum = 0;
        for i = 1:3
            temp = a + b + carry_in;
            if temp >= 2
                carry_out = 1;
            else
                carry_out = 0;
            end
            sum = bitset(sum, i, mod(temp, 2));
            carry_in = carry_out;
            a = bitshift(a, -1);
            b = bitshift(b, -1);
        end
    end
end
