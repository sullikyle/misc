function compareArrays(array1, array2)
if size(array1) ~= size(array2);
    % if arrays are not equal size, then exit the function
    error('Arrays are not equal size.')
end

% first we are  store the values of array1 and array2 into a new matrix
% called compareArr; we will use this to see if there are any values where
% array1(i) is increased while array2(i) is decreased or vice versa
compareArr = zeros(length(array1), 2);

for i=1:length(compareArr);
    compareArr(i,1) = array1(i);
    compareArr(i,2) = array2(i);
end

% companion is an array of size length(compare) by 1, used to determine
% if array1 and array2 are of the same sign or not
% 1 = both neg, 2 = array1 neg, array2 pos, 3 = array1 pos, array2 neg, 
% 4 = both pos, 5 = both zero
companion = zeros(length(compareArr),1);
disp(size(companion))
for i=1:length(compareArr);
    if compareArr(i,1) < 0 && compareArr(i,2) < 0;
        companion(i) = 1;
    elseif compareArr(i,1) < 0 && compareArr(i,2) > 0;
        companion(i) = 2;
    elseif compareArr(i,1) > 0 && compareArr(i,2) < 0;
        companion(i) = 3;
    elseif compareArr(i,1) > 0 && compareArr(i,2) > 0;
        companion(i) = 4;
    elseif compareArr(i,1) == 0 && compareArr(i,2) == 0;
        companion(i) = 5;
    elseif compareArr(i,1) > 0 && compareArr(i,2) == 0;
        companion(i) = 6;
    elseif compareArr(i,1) < 0 && compareArr(i,2) == 0;
        companion(i) = 7;
    elseif compareArr(i,1) == 0 && compareArr(i,2) > 0;
        companion(i) = 8;
    elseif compareArr(i,1) == 0 && compareArr(i,2) < 0;
        companion(i) = 9;
    else
        companion(i) = 10;
%         continue
    end
end
oneCounter = 0;
twoCounter = 0;
threeCounter = 0;
fourCounter = 0;
fiveCounter = 0;
%original code had up to 5
sixCounter = 0;
sevenCounter = 0;
eightCounter = 0;
nineCounter = 0;
tenCounter = 0;

for i=1:length(companion);
    if companion(i) == 1;
        oneCounter = oneCounter + 1;
    elseif companion(i) == 2;
        twoCounter = twoCounter + 1;
    elseif companion(i) == 3;
        threeCounter = threeCounter + 1;
    elseif companion(i) == 4;
        fourCounter = fourCounter + 1;
    elseif companion(i) == 5;
        fiveCounter = fiveCounter + 1;
    elseif companion(i) == 6;
        sixCounter = sixCounter + 1;
    elseif companion(i) == 7;
        sevenCounter = sevenCounter + 1;
    elseif companion(i) == 8;
        eightCounter = eightCounter + 1;
    elseif companion(i) == 9;
        nineCounter = nineCounter + 1;
    else
        tenCounter = tenCounter + 1;
        %continue
    end;
end;

disp('Both negative: ')
disp(oneCounter)
disp('First negative, second positive: ')
disp(twoCounter)
disp('First positive, second negative: ')
disp(threeCounter)
disp('Both positive: ')
disp(fourCounter)
disp('Both zero: ') 
disp(fiveCounter)
disp('First positive, second zero')
disp(sixCounter)
disp('First negative, second zero')
disp(sevenCounter)
disp('First zero, second positive')
disp(eightCounter)
disp('First zero, second negative')
disp(nineCounter)
% disp('10 count') %shouldn't be another possibility, used for debugging
% disp(tenCounter)
disp('Total genes: ')
disp(length(array1))
disp(length(array2))
end