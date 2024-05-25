function Averaging(img)
        gray_image=(img(:,:,1)+img(:,:,2)+img(:,:,3))/3;
        gray_image=uint8(gray_image);
        figure,imshow(gray_image),title('Gray (Averaging) ');
end