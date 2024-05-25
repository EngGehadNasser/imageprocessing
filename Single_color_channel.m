function Single_color_channel(img)
        gray_image=img(:,:,1);
        gray_image=uint8(gray_image);
        gray_image=uint8(gray_image);
        figure,imshow(gray_image),title('Gray (Single color channel) ');
        end