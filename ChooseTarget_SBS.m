pixelTmp = 0;
for i = 1000:1131
fileName = ['Fold1\Normalized\two' num2str(i) '.png'];
input = imread(fileName);
numbPixel = sum(input(:));
    if numbPixel > pixelTmp
        pixelTmp = numbPixel;
        numbTmp = i;
    end
end
Target = imread('Fold1\Normalized\two' + string(numbTmp) + '.png');
figure,imshow(Target,[]);
hold on
Ilabel = bwlabel(Target,8);    %pixels are 8-connected
stats = regionprops(Ilabel,'Area', 'Centroid');
area = [stats.Area];
[maxArea, indexOfMaxArea] = max(area);
plot(stats(indexOfMaxArea).Centroid(1), stats(indexOfMaxArea).Centroid(2), 'r+', 'MarkerSize', 20, 'LineWidth', 1);
hold off