function Histogram_Equalization( Input_image)
Gray_Image = RGBtoGray_Luminance(Input_image);
 [rows, cols] = size(Gray_Image);
 histogram = zeros(256, 1);
 for i = 1:rows
     for j = 1:cols
           pixelValue = Gray_Image(i, j);
           histogram(pixelValue + 1) = histogram(pixelValue + 1) + 1;
     end
 end
 runningSum = cumsum(histogram);
 maxRunningSum = max(runningSum);
 normalizedSum = runningSum / maxRunningSum;
 New_Range = 255; 
 transformedSum = round(normalizedSum * New_Range);
 Output_Image = zeros(rows, cols);
 for i = 1:rows
    for j = 1:cols
         pixelValue = Gray_Image(i, j);
         Output_Image(i, j) = transformedSum(pixelValue + 1);
    end
 end
Output_Image = uint8(Output_Image);
figure, imshow(Output_Image), title('Histogram Equalization');
end