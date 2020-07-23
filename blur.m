function blur(img,w)
    img_data=imread(img);
    
    %Store row and column data of img data%
    [r,c]=size(img_data);
    
    %Creating output array with default values as 1%
    output=ones(r,c);
    
    %Now we will apply blur on each pixel in array%
    for i=1:r
        for j=1:c
            %Now checking and applying limits for sub-array%
            if i-w<1
                sub_mat_row_index=1:(i+w);
            elseif i+w>r
                sub_mat_row_index=(i-w):r;
            else 
                sub_mat_row_index=(i-w):(i+w);
            end    
            
            if j-w<1
                sub_mat_col_index=1:(j+w);
            elseif j+w>c
                sub_mat_col_index=(j-w):c;
            else 
                sub_mat_col_index=(j-w):(j+w);
            end 
            
            %Now get the sub-array data%
            sub_mat=img_data(sub_mat_row_index,sub_mat_col_index);
            
            %Blurring by applying mean%
            output(i,j)=mean(sub_mat(:));
        end
    end
    %To grayscale%
    output=uint8(output);  
    
    %Show output%
    imshow(output);
end