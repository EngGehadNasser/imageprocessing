function PowerLaw(Input_image,gamma)
            [rows, cols,ch] = size(Input_image);
            if(ch>1)
                Gray_Image = RGBtoGray_Luminance(Input_image);
            end
            Output_Image = zeros(rows, cols);
            for i = 1:rows
                for j = 1:cols
                    Old_Value = Gray_Image(i, j);
                    New_Value = double(Old_Value) ^ gamma;
                    New_Value = New_Value / (255 ^ gamma) * 255; %New_Value is normalized by dividing it by (255 ^ gamma) and then multiplied by 255 to scale it to the range 0-255
                    Output_Image(i, j) = New_Value;
                end
            end
    Output_Image = uint8(Output_Image);
    figure, imshow(Output_Image), title('Power Law');
    end