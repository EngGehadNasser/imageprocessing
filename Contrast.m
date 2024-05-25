function Contrast(Input_image,New_Max,New_Min)
            if  New_Min<0 || New_Min>255 || New_Max<0 || New_Max>255 
                 warndlg('Please enter a valid range!')
            else
           
            Gray_Image = RGBtoGray_Luminance(Input_image);
            [rows, cols] = size(Gray_Image);
            Old_Min = min(Gray_Image(:));
            Old_Max = max(Gray_Image(:));
            Output_Image = zeros(rows, cols);
            for i = 1:rows
                for j = 1:cols
                    Old_Value = Gray_Image(i, j);
                    New_Value = ((Old_Value - Old_Min) / (Old_Max - Old_Min)) * (New_Max - New_Min) + New_Min;
                    
                    if New_Value > 255
                        New_Value = 255;
                    elseif New_Value < 0
                        New_Value = 0;
                    end
                    Output_Image(i, j) = New_Value;
                end
            end
            Output_Image = uint8(Output_Image);
            figure, imshow(Output_Image), title('Contrast Image');
            end
end