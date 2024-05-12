function DrawHistogram(Input_image)
[r,c,channels]=size(Input_image);
  if (channels==3)
      Gray_Image =zeros(r,c,'uint8');
      for i=1:r
          for j=1:c     
              Gray_Image(i,j)=0.3*Input_image(i,j,1)+0.59*Input_image(i,j,2)+0.11*Input_image(i,j,3);
          end
      end
      Input_image =Gray_Image;
  end
  img=Input_image;
  [x, y] = size(img);
  freqArray = 1 : 256;
  count = 0;  
  for i = 1 : 256
      for j = 1 : x  
           for k = 1 : y 
                 if img(j, k) == i-1
                      count = count + 1;
                 end
            end
       end
       freqArray(i) = count;
       count = 0; 
   end
   n = 0 : 255; 
   figure
   stem(n, freqArray); 
   grid on; 
   xlabel('Index Of Pixels');   
   ylabel('Number of pixels for any level'); 
   title('Drawing the histogram');
end

