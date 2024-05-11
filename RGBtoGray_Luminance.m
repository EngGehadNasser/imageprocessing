function  Gray_Image  = RGBtoGray_Luminance(RGB_Image)
[r,c,channels]=size(RGB_Image);
Gray_Image =zeros(r,c,'uint8');

  for i=1:r
      for j=1:c     
    Gray_Image(i,j)=0.3*RGB_Image(i,j,1)+0.59*RGB_Image(i,j,2)+0.11*RGB_Image(i,j,3);
      end
  end

imshow(Gray_Image);
end