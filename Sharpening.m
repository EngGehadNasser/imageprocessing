function sharpenedImage = Sharpening(image)
Filter_Size=3;
weights = [-1, -1, -1; -1, 9, -1; -1, -1, -1];
    [rows, cols, ~] = size(image);
    padded_image = Padding(image, Filter_Size);
    sharpenedImage = zeros(rows, cols, 3, 'like', image); % Initialize RGB image
    for k=1:3
        for i = 1:rows
            for j = 1:cols
                neighborhood = double(padded_image(i:i+2, j:j+2, k));
                weighted_sum = sum(neighborhood(:) .* weights(:));
                if weighted_sum > 255
                    weighted_sum = 255;
                elseif weighted_sum < 0
                    weighted_sum = 0;
                end
                sharpenedImage(i, j, k) = weighted_sum;
            end
        end
    end
    
    sharpenedImage = uint8(sharpenedImage);
    figure;
    imshow(sharpenedImage);
    title('Sharpened Image'); 
end