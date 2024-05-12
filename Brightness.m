function Brightness(Input_image,offest)
[rows,cols,chs] = size(Input_image);
           if offest<0
               s='Darkness';
           elseif offest>0
               s='Brightness';
           else
               s='Input Image';
          end
            new_image = Input_image;          
            for ch=1:chs  
                for row=1:rows   
                    for col=1:cols    
                        NewValue = Input_image(row,col,ch) + offest;   
                        if NewValue>255
                            new_image(row,col,ch) = 255;
                        elseif NewValue<0     
                            new_image(row,col,ch) = 0;  
                        else
                            new_image(row,col,ch) = NewValue;
                        end   
                    end
                end
            end

            figure,imshow(new_image),title(s); 

end