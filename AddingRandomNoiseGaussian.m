
function AddingRandomNoiseGaussian(image,mean,stddev)
    % Convert the image to double precision
    image = im2double(image);
    
    % Generate Gaussian random noise with the given mean and standard deviation
    noise = mean + stddev * randn(size(image));

    % Add the noise to the image
    noisyImage = image + noise;

    % Clip the pixel values to the range [0, 1]
    noisyImage = max(0, min(1, noisyImage));


    figure, imshow(noisyImage),title('Noisy Image');
    end