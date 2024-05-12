function AddTwoImages(Input_image,Input_image2)
[rows1,cols1,chs1] = size(Input_image);  
            [rows2,cols2,chs2] = size(Input_image2);
            image = imresize(Input_image2, [rows1, cols1]);
            Input_image2=image;
            New_image = zeros(rows1,cols1,chs1);
            for ch=1:chs1     
                for row=1:rows1   
                    for col=1:cols1                
                        Value = Input_image(row,col,ch)+Input_image2(row,col,ch);
                        if Value > 255
                            New_image(row,col,ch) = 255;
                        else
                            New_image(row,col,ch) = Value;
                        end
                    end 
                end
            end
            
            New_Image = uint8(New_image);
         figure, imshow(New_Image), title('Add two images');
         end