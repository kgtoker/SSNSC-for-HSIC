function [indexes]=train_test_random_new(y,n)
% function to ramdonly select training samples and testing samples from the
% whole set of ground truth.
% alltrain is the ground truth
% % clc
% alltrain = alltrain';
% y = alltrain(2,:); % Indiana
% y = alltrain(1,:); % Salinas
% yindex = [];
% train = [];
% lys = 0;

K = max(y);
% pK = 0.0001,


% generate the  training set
indexes = [];
for i = 1:K
    index1 = find(y == i);
    per_index1 = randperm(length(index1));
%     if length(index1)>n
        
    if length(index1)>60
        indexes = [indexes ;index1(per_index1(1:n(i)))'];
    else
%         indexes = [indexes
%         ;index1(per_index1(1:floor(length(index1)/2)))'];
        indexes = [indexes ;index1(per_index1(1:n(i)))'];
    end
end
indexes = indexes(:);


