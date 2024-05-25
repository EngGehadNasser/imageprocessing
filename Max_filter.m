function Max_filter( image,filter_size)
if size(image, 3) > 1
    image = RGBtoGray_Luminance(image);
end

    [rows, cols] = size(image);

    padded_image = Padding(image, filter_size);

    smoothed_image = zeros(rows, cols, 'like', image);  % Initialize smoothed_image with the same data type as the input image

    for i = 1:rows
        for j = 1:cols
            neighborhood = padded_image(i:i+filter_size-1, j:j+filter_size-1);
            max_value = max(neighborhood(:));
            smoothed_image(i, j) = max_value;
        end
    end
    figure;imshow(smoothed_image);title('Smoothed Image');
end