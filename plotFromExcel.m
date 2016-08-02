% plotFromExcel.m
firstDir = cd; %stores current directory of MATLAB file into the variable named firstDir
% now we set the current directory to where data is located and load it
% into allData; note that the directory name must change based on location
cd('E:\Ohio_OSU\OSU\Obrietan Lab\Diego microarray data')

% first convert the file in question into a CSV file, this makes it easier
% for importdata to manage strings and numbers into separate arrays
allData = importdata('intersect for MATLAB plotting.xlsx');
cd(firstDir) %goes back to the directory where the MATLAB file is located to execute commands

groupIText = allData.textdata.PointsToPlot(6:end,2);
groupIIText = allData.textdata.PointsToPlot(6:17,7);
groupIIIText = allData.textdata.PointsToPlot(6:12, 12);
% NOTE: Group IV contains two genes with ONLY trancript IDs, no gene symbol
groupIVText = allData.textdata.PointsToPlot(6:24, 17);
groupVText = allData.textdata.PointsToPlot(6:23, 22);
groupVIText = allData.textdata.PointsToPlot(6:33, 27);

groupOneX = zeros(length(groupIText),1);
groupOneY = zeros(length(groupIText),1);
groupTwoX = zeros(length(groupIIText),1);
groupTwoY = zeros(length(groupIIText),1);
groupThreeX = zeros(length(groupIIIText),1);
groupThreeY = zeros(length(groupIIIText),1);
groupFourX = zeros(length(groupIVText),1);
groupFourY = zeros(length(groupIVText),1);
groupFiveX = zeros(length(groupVText),1);
groupFiveY = zeros(length(groupVText),1);
groupSixX = zeros(length(groupVIText),1);
groupSixY = zeros(length(groupVIText),1);

for i=1:length(groupIText);
    groupOneX(i) = allData.data.PointsToPlot(i, 1);
    groupOneY(i) = allData.data.PointsToPlot(i, 2);
end
for i=1:length(groupIIText);
    groupTwoX(i) = allData.data.PointsToPlot(i,6);
    groupTwoY(i) = allData.data.PointsToPlot(i,7);
end
for i=1:length(groupIIIText);
    groupThreeX(i) = allData.data.PointsToPlot(i,11);
    groupThreeY(i) = allData.data.PointsToPlot(i,12);
end
for i=1:length(groupIVText);
    groupFourX(i) = allData.data.PointsToPlot(i,16);
    groupFourY(i) = allData.data.PointsToPlot(i,17);
end
for i=1:length(groupVText);
    groupFiveX(i) = allData.data.PointsToPlot(i,21);
    groupFiveY(i) = allData.data.PointsToPlot(i,22);
end
for i=1:length(groupVIText);
    groupSixX(i) = allData.data.PointsToPlot(i,26);
    groupSixY(i) = allData.data.PointsToPlot(i,27);
end
% creates a scatterplot with given X and Y coordinates, circle size 10
% makes the circle red and filled
scatter(groupOneX,groupOneY,10,'r','filled')
% create a label with the gene symbol for each point, with font size 8
for i=1:length(groupOneX);
    text(groupOneX(i),groupOneY(i),groupIText(i), 'FontSize', 8);
end
% NEED this hold in order to plot the following points on the same graph as
% the coordinates from Group One
hold

scatter(groupTwoX,groupTwoY,20,'m','filled')
for i=1:length(groupTwoX);
    text(groupTwoX(i),groupTwoY(i),groupIIText(i), 'FontSize', 8);
end
scatter(groupThreeX,groupThreeY,20,'b','filled')
for i=1:length(groupThreeX);
    text(groupThreeX(i),groupThreeY(i),groupIIIText(i), 'FontSize', 8);
end
scatter(groupFourX,groupFourY,20,'k','filled')
for i=1:length(groupFourX);
    text(groupFourX(i),groupFourY(i),groupIVText(i), 'FontSize', 8);
end
scatter(groupFiveX,groupFiveY,20,'g','filled')
for i=1:length(groupFiveX);
    text(groupFiveX(i),groupFiveY(i),groupVText(i), 'FontSize', 8);
end

scatter(groupSixX,groupSixY,20,'c','filled')
for i=1:length(groupSixX);
    text(groupSixX(i),groupSixY(i),groupVIText(i), 'FontSize', 8);
end
