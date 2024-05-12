function AddTwoImages(Input_image,Input_image2)
[rows1,cols1,chs1] = size(Input_image);  
            [rows2,cols2,chs2] = size(Input_image2);
            if chs1<chs2
                chs = chs1;
            else
                chs = chs2;
            end
            if rows1 < rows2 
                rows = rows1;
        
            else
                rows = rows2;
            end
                if cols1<cols2
   
                cols = cols1;
            else
                cols = cols2;
         
               end
            New_image = zeros(rows,cols,chs);
            for ch=1:chs     
                for row=1:rows   
                    for col=1:cols                
                        Value = Input_image(row,col,ch)+Input_image2(row,col,ch);  
                        New_image(row,col,ch) = Value;
                      
                    end 
                end
            end
            min_val = min(New_image(:));
            max_val = max(New_image(:));

            % Normalize the combined image to the range [0, 255]
           normalized_image = (((New_image) - min_val) * (255 / (max_val - min_val)));
           normalized_image=uint8(normalized_image);
           % Display the normalized image
       
         
         figure, imshow(normalized_image), title('Add two images');

         end