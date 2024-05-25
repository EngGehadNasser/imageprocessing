function geometric_mean_filter(image,windowSize)
 % Get the size of the image
    if  mod(windowSize, 2) == 0 || windowSize <1
     warndlg('Please enter an integer odd window size !') 
else
    [rows, cols,ch] = size(image);
     if(ch>1)
         image=RGBtoGray_Luminance(image);
     end   
     % Convert the image to double precision
    image = im2double(image);

    % Calculate the padding size
    padding = floor(windowSize/2);

    % Create a padded image with ones
    paddedImage = padarray(image, [padding, padding], 1);

    % Initialize the filtered image
    filteredImage = zeros(rows, cols);

    % Apply the geometric mean filter
    for i = 1:rows
        for j = 1:cols
            % Extract the window of pixels
            window = paddedImage(i:i+windowSize-1, j:j+windowSize-1);

            % Calculate the geometric mean of the window
            geometricMean = prod(window(:))^(1/(windowSize^2));

            % Assign the geometric mean value to the filtered image
            filteredImage(i, j) = geometricMean;
        end
    end
    % Display the original image
figure;imshow(filteredImage);title('Filtered Image');
    end
end
