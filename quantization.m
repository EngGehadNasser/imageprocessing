function [ newimage ] = quantization( oldimage,K )

[row,column,pages]=size(oldimage);
newimage=zeros(row,column,pages,'uint8');
grayLevel=2^K;
gap=256/grayLevel;
colors=gap:gap:256;
for k=1:pages
for i=1:row
      for j=1:column
          
       temp=oldimage(i,j,k)/gap;
       index=floor(temp);
       
       if index<1
          index=1;
       end
       
       newimage(i,j,k)=colors(index);
      end
end 
end
figure;imshow(newimage),title('New Image');


end