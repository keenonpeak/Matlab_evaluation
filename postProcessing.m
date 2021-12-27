for i = 1000:1234
fileName = ['Fold1/2Prediction/one' num2str(i) '.png'];
input = imread(fileName);
doubleInput = double(input(:,:,1));
norm_data = uint8((doubleInput - min(doubleInput(:)) )./( max(doubleInput(:)) - min(doubleInput(:))));
PPnorm_data = bwareaopen(norm_data, 500);
filename = ['C:\Users\leonm\Desktop\Engineering\Matlab\Fold1\PostProcessing\','one' num2str(i) '.png'];
imwrite(PPnorm_data,filename);
end
for i = 1000:1131
fileName = ['Fold1/2Prediction/two' num2str(i) '.png'];
input = imread(fileName);
doubleInput = double(input(:,:,1));
norm_data = uint8((doubleInput - min(doubleInput(:)) )./( max(doubleInput(:)) - min(doubleInput(:))));
PPnorm_data = bwareaopen(norm_data, 500);
filename = ['C:\Users\leonm\Desktop\Engineering\Matlab\Fold1\PostProcessing\','two' num2str(i) '.png'];
imwrite(PPnorm_data,filename);
end