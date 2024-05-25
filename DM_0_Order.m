function DM_0_Order(Input_image,fact_row,fact_column)
       if(fact_column ~= fact_row)
           warndlg('Please enter an equal height and width')
       else 
                    [r, c, ch]=size(Input_image);
                    fact=fact_row;
                    New_r = r*fact;
                    New_c = c*fact;
                    New_im = zeros(New_r,New_c, ch); 
                    for k=1:ch
                        for i=1:r
                            for j=1:c
                                New_im(i*fact+1-fact:i*fact,j*fact+1-fact:j*fact,k)= Input_image(i,j,k);

                            end
                        end
                    end
                    
                    New_im = uint8(New_im);
                    figure,imshow(New_im),title('Resized (DM_0 order)');
       end      
end