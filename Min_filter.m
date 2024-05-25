function Min_filter( image,filter_size)
    if size(image, 3) > 1
        image = RGBtoGray_Luminance(image);
    end

    [rows, cols] = size(image);

    padded_image = Padding(image, filter_size);
    smoothed_image = zeros(rows, cols, 'like', image);  % Initialize smoothed_image with the same data type as the input image

    for i = 1:rows
        for j = 1:cols
            neighborhood = padded_image(i:i+filter_size-1, j:j+filter_size-1);
            neighborhood_vector = reshape(neighborhood, [], 1);
            min_value = min(neighborhood_vector);
            smoothed_image(i, j) = min_value;
        end
    end
    figure;imshow(smoothed_image);title('smoothed image');
end