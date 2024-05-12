function [New_image] = UnSharpen(image)
filter_size = 5;
    [rows, cols,~] = size(image);

    padded_image = Padding(image, filter_size);

    smoothed_image = zeros(rows, cols,3, 'like', image);
    for k=1:3
        for i = 1:rows
            for j = 1:cols
                neighborhood = padded_image(i:i+filter_size-1, j:j+filter_size-1);
                mean_value = mean(neighborhood(:));
                smoothed_image(i, j,k) = mean_value;
            end
        end
    end
    Edge_image = image - smoothed_image;
    New_image = Edge_image + image;
    figure;imshow(New_image);title('Unsharped Image');
    end