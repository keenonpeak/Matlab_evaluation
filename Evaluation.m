Pimg = imageDatastore('Fold1/Normalized/*.png');
Prediction = readall(Pimg);
Limg = imageDatastore('LabelData/Fold1/*.png');
GroundTruth = readall(Limg);
P = vertcat(Prediction{:});
L = vertcat(GroundTruth{:}); 
%compute the confusion matrix
[C,one] = confusionmat(P(:),L(:));
FN = C(2,1);
TN = C(1,1);
FP = C(1,2);
TP = C(2,2);
ACC = (TP + TN) / (TP + TN + FP + FN);
TPR = 100 * TP / (TP + FN);
FPR = 100 * FP / (FP + TN);
F1Score = 2 * TP / (2 * TP + FP + FN);
Jaccard = 100* TP / (TP + FN + FP);