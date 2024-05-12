function [mask,mask_size] = GuassianFilter(sigma)
N = floor(3.7*sigma-0.5);
mask_size = 2*N+1;
t=floor(mask_size/2);
x=(-t:t);
mask=zeros(mask_size,mask_size);
coef=(1/(2*pi*(sigma^2)));
for i=1:mask_size
    for j=1:mask_size
    mask(i,j)=coef*exp(-((x(i)^2)+(x(j)^2))/(2*(sigma^2)));
    end
end
end
