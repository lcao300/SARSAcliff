function dir_to_gif(dirname)

% create gif from directory of images and delete directory
file_wildcard = [dirname '/*.png'];
files = dir(file_wildcard);
img_cell = {};
gif_name = [dirname '.gif'];

count = 0;
for file=files'
    file = file.name;
    filename = [dirname '/' file];
    img = rgb2gray(imread(filename));
    
    if ( count == 0 )
        imwrite(img, gif_name, 'gif', 'LoopCount', Inf, 'DelayTime', 0.1);
    else
        imwrite(img, gif_name, 'gif', 'WriteMode', 'append', 'DelayTime', 0.1);
    end
    
    count = count + 1;
end

rmdir(dirname, 's');

end

