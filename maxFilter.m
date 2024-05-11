function smoothed_image = maxFilter(image, filter_size)
    if size(image, 3) > 1
        image = rgb2gray(image);
    end

    [rows, cols] = size(image);

    padded_image = padarray(image, [floor(filter_size/2), floor(filter_size/2)]);

    smoothed_image = zeros(rows, cols, 'like', image);  % Initialize smoothed_image with the same data type as the input image

    for i = 1:rows
        for j = 1:cols
            neighborhood = padded_image(i:i+filter_size-1, j:j+filter_size-1);
            max_value = max(neighborhood(:));
            smoothed_image(i, j) = max_value;
        end
    end
    imshow(smoothed_image);
end