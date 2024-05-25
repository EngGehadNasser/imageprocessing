function salt_pepper(image,density)
% Convert the image to double precision
    image = im2double(image);

    % Generate salt and pepper noise with the given density
    noise = rand(size(image));
    noisyImage = image;
    
    % Apply salt and pepper noise to the image
    noisyImage(noise <= density/2) = 0; % Salt noise
    noisyImage(noise >= 1 - density/2) = 1; % Pepper noise

    % Display the original image
    figure;
    imshow(noisyImage);
    title('Noisy Image');
    end