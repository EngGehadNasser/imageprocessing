function MeanFilter(Input_Image)
    if size(Input_Image, 3) > 1
        Input_Image =RGBtoGray_Luminance(Input_Image);
    end
Filter_Size = 3;
[rows, cols] = size(Input_Image);
Padded_Image = padarray(Input_Image, [floor(Filter_Size/2), floor(Filter_Size/2)]);
Smoothed_Image = zeros(rows, cols);

for i = 1:rows
    for j = 1:cols
        Neighborhood = Padded_Image(i:i+Filter_Size-1, j:j+Filter_Size-1);
        sum_value = sum(Neighborhood(:));
        Mean_Value = sum_value / (Filter_Size^2);
        Smoothed_Image(i, j) = Mean_Value;
    end
end

Out_image=uint8(Smoothed_Image);
figure, imshow(Out_image), title('Smoothed Image with Mean Filter ');
end