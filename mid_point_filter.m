function mid_point_filter(image,windowSize)
 % Get the size of the image
    if  mod(windowSize, 2) == 0 || windowSize <1
     warndlg('Please enter an integer odd window size !') 
    else
        % Convert the image to double precision
image = im2double(image);                 
image=RGBtoGray_Luminance(image);
    % Get the size of the image
    [rows, cols] = size(image);

    % Calculate the padding size
    padding = floor(windowSize/2);

    % Create a padded image with zeros
    paddedImage = padarray(image, [padding, padding], 0);

    % Initialize the filtered image
    filteredImage = zeros(rows, cols);

    % Apply the midpoint filter
    for i = 1:rows
        for j = 1:cols
            % Extract the window of pixels
            window = paddedImage(i:i+windowSize-1, j:j+windowSize-1);

            % Calculate the midpoint value
            midpoint = (min(window(:)) + max(window(:))) / 2;

            % Assign the midpoint value to the filtered image
            filteredImage(i, j) = midpoint;
        end
    end
    % Display the original image
    figure;
    imshow(filteredImage);
    title('Filtered Image');
end
end