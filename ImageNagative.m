function ImageNagative(Input_image)

            Gray_Image = RGBtoGray_Luminance(Input_image);
            [rows, cols] = size(Gray_Image);
            Negative_Image = zeros(rows, cols);
            for i = 1:rows
                for j = 1:cols
                    oldValue = Gray_Image(i, j);
                    newValue = 255 - oldValue;
                    Negative_Image(i, j) = newValue;
                end
            end
            Negative_Image = uint8(Negative_Image);
            figure, imshow(Negative_Image), title('image Nagative');
end