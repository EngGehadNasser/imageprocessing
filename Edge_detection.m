function Edge_detection(image)
    if size(image, 3) > 1
        image=RGBtoGray_Luminance(image);
    end

    [rows, cols] = size(image);
    edgeImage = zeros(rows, cols);
    for i = 2:rows-1
        for j = 1:cols
            edgeImage(i, j) = image(i+1,j)+image(i-1,j)-2*image(i,j); 
            if(i==rows-1)
                edgeImage(i+1, j) =0;
            end   
            if(i==2)
                edgeImage(i-1, j) =0;
            end 
        end
    end
    edgeImage = edgeImage / max(abs(edgeImage(:))); %edgeImage is normalized by dividing it by the maximum absolute value of all elements in edgeImage. This step ensures that the edge image is scaled between 0 and 1.
    figure;imshow(edgeImage);title('Edge Image (Second Derivative)');
    end