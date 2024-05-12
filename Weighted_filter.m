function Weighted_filter(Input_Image,sigma)
if size(Input_Image, 3) > 1
    Input_Image = RGBtoGray_Luminance(Input_Image);
end
[mask,mask_size] = GuassianFilter(sigma);
mask = mask / sum(mask(:));
[rows, cols] = size(Input_Image);
Padded_Image = Padding(Input_Image, mask_size);
Smoothed_Image = zeros(rows, cols, 'like', Input_Image);

for i = 1:rows
    for j = 1:cols
        Neighborhood = double(Padded_Image(i:i+mask_size-1, j:j+mask_size-1));
        mask_Sum = sum(Neighborhood .* mask, 'all');
        Smoothed_Image(i, j) = mask_Sum;
    end
end
Smoothed_Image = uint8(Smoothed_Image);
figure, imshow(Smoothed_Image), title('Smoothed Image with Weighted Filter');
end