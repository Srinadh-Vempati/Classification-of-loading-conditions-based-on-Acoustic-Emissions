%%  Test set
testfeatures = zeros(240,22);
testfeatures(:,1) = [g1_1(1:40,:);g1_2(1:40,:);g1_3(1:40,:);g1_4(1:40,:);g1_5(1:40,:);g1_6(1:40,:)];
testfeatures(:,2) = [g2_1(1:40,:);g2_2(1:40,:);g2_3(1:40,:);g2_4(1:40,:);g2_5(1:40,:);g2_6(1:40,:)];
testfeatures(:,3:14) = [g3_1(1:40,:);g3_2(1:40,:);g3_3(1:40,:);g3_4(1:40,:);g3_5(1:40,:);g3_6(1:40,:)];
testfeatures(:,15:17) = [g4_1(1:40,:);g4_2(1:40,:);g4_3(1:40,:);g4_4(1:40,:);g4_5(1:40,:);g4_6(1:40,:)];
testfeatures(:,18:22) = [g5_1(1:40,:);g5_2(1:40,:);g5_3(1:40,:);g5_4(1:40,:);g5_5(1:40,:);g5_6(1:40,:)];

%% Group id

testfeatures(1:40,23) = ones(40,1);
testfeatures(41:80,23) = ones(40,1)*2;
testfeatures(81:120,23) = ones(40,1)*3;
testfeatures(121:160,23) = ones(40,1)*4;
testfeatures(161:200,23) = ones(40,1)*5;
testfeatures(201:240,23) = ones(40,1)*6;

%% Only features w/o Group iD

testfeats = testfeatures(:,1:22);