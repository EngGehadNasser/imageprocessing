function Desaturation(img)

 [row,cl,ch]=size(img);
        for k=1:ch
            for i=1:row
                for j=1:cl
                    gray_image(i,j,k)=(max(img(i,j,:))+min(img(i,j,:)))/2;
                end
            end
        end
        gray_image=uint8(gray_image);
        figure,imshow(gray_image),title('Gray (Desaturation) ')
end