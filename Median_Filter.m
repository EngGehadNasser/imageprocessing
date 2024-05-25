function Median_Filter(Input_Image,Filter_Size)
if size(Input_Image, 3) > 1
    Input_Image = RGBtoGray_Luminance(Input_Image);
end
[rows, cols] = size(Input_Image);
Padded_Image =Padding(Input_Image, Filter_Size);
Smoothed_Image = zeros(rows, cols);

for i = 1:rows
    for j = 1:cols
        Neighborhood = Padded_Image(i:i+Filter_Size-1, j:j+Filter_Size-1);
        Neighborhood_Vector = reshape(Neighborhood, [], 1);      
        Median_Value = median(Neighborhood_Vector);
        Smoothed_Image(i, j) = Median_Value;
    end
end

Out_image=uint8(Smoothed_Image);
figure, imshow(Out_image), title('Smoothed Image with Median Filter ');
end