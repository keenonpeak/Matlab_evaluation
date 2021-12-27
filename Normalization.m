for i = 1000:1234
fileName = ['Fold1/PostProcessing/one' num2str(i) '.png'];
input = imread(fileName);
doubleInput = double(input(:,:,1));
norm_data = uint8((doubleInput - min(doubleInput(:)) )./( max(doubleInput(:)) - min(doubleInput(:))));
filename = ['C:\Users\leonm\Desktop\Engineering\Matlab\Fold1\Normalized\','one' num2str(i) '.png'];
imwrite(norm_data,filename);
end
for i = 1000:1131
fileName = ['Fold1/PostProcessing/two' num2str(i) '.png'];
input = imread(fileName);
doubleInput = double(input(:,:,1));
norm_data = uint8((doubleInput - min(doubleInput(:)) )./( max(doubleInput(:)) - min(doubleInput(:))));
filename = ['C:\Users\leonm\Desktop\Engineering\Matlab\Fold1\Normalized\','two' num2str(i) '.png'];
imwrite(norm_data,filename);
end