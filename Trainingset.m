%% Training set
features = zeros(600,22);
features(:,1) = [f1_1;f1_2;f1_3;f1_4;f1_5;f1_6];
features(:,2) = [f2_1;f2_2;f2_3;f2_4;f2_5;f2_6];
features(:,3:14) = [f3_1;f3_2;f3_3;f3_4;f3_5;f3_6];
features(:,15:17) = [f4_1;f4_2;f4_3;f4_4;f4_5;f4_6];
features(:,18:22) = [f5_1;f5_2;f5_3;f5_4;f5_5;f5_6];

features1 = zeros(360,22);
features1(:,1) = [g1_1(41:end,:);g1_2(41:end,:);g1_3(41:end,:);g1_4(41:end,:);g1_5(41:end,:);g1_6(41:end,:)];
features1(:,2) = [g2_1(41:end,:);g2_2(41:end,:);g2_3(41:end,:);g2_4(41:end,:);g2_5(41:end,:);g2_6(41:end,:)];
features1(:,3:14) = [g3_1(41:end,:);g3_2(41:end,:);g3_3(41:end,:);g3_4(41:end,:);g3_5(41:end,:);g3_6(41:end,:)];
features1(:,15:17) = [g4_1(41:end,:);g4_2(41:end,:);g4_3(41:end,:);g4_4(41:end,:);g4_5(41:end,:);g4_6(41:end,:)];
features1(:,18:22) = [g5_1(41:end,:);g5_2(41:end,:);g5_3(41:end,:);g5_4(41:end,:);g5_5(41:end,:);g5_6(41:end,:)];
%% Group id creation
features = [features; features1];

features(1:100,23) = ones(100,1);
features(101:200,23) = ones(100,1)*2;
features(201:300,23) = ones(100,1)*3;
features(301:400,23) = ones(100,1)*4;
features(401:500,23) = ones(100,1)*5;
features(501:600,23) = ones(100,1)*6;
features(601:660,23) = ones(60,1);
features(661:720,23) = ones(60,1)*2;
features(721:780,23) = ones(60,1)*3;
features(781:840,23) = ones(60,1)*4;
features(841:900,23) = ones(60,1)*5;
features(901:960,23) = ones(60,1)*6;

%% Only features w/o Group iD

trainingfeats = features(:,1:22);