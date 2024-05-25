function Decomposing(img)
        xgray=min(img(:,:,1),img(:,:,2));
        gray_image=min(xgray,img(:,:,3));
        gray_image=uint8(gray_image);
        figure,imshow(gray_image),title('Gray (Decomposing) ') 
end