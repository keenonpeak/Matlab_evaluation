for i = 1000:1146
fileName = ['LabelData/Fold5/nine' num2str(i) '.png'];
input = imread(fileName);
doubleInput = double(input(:,:,1));
norm_data = doubleInput;
filename = ['C:\Users\leonm\Desktop\Engineering\Matlab\LabelData_visible\\Fold5\','nine' num2str(i) '.png'];
imwrite(norm_data,filename);
end
for i = 1000:1131
fileName = ['LabelData/Fold5/ten' num2str(i) '.png'];
input = imread(fileName);
doubleInput = double(input(:,:,1));
norm_data = doubleInput;
filename = ['C:\Users\leonm\Desktop\Engineering\Matlab\LabelData_visible\Fold5\','ten' num2str(i) '.png'];
imwrite(norm_data,filename);
end