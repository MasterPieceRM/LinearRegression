function [FeatureMatrix] = prepare_for_regression(InitialMatrix)
    [m, n] = size(InitialMatrix);
    for i = 1 : m
        column_count = 0; % Counter elemente decalate
        for j = 1 : n
            if strcmp(InitialMatrix{i, j}, 'yes')
                FeatureMatrix(i, j) = 1;
            elseif strcmp(InitialMatrix{i, j}, 'no')
                FeatureMatrix(i, j) = 0;
            elseif strcmp(InitialMatrix{i, j}, 'semi-furnished')
                column_count = column_count + 1;
                FeatureMatrix(i, j) = 1;
                FeatureMatrix(i, j + 1) = 0;
            elseif strcmp(InitialMatrix{i, j}, 'unfurnished')
                column_count = column_count + 1;
                FeatureMatrix(i, j) = 0;
                FeatureMatrix(i, j + 1) = 1;
            elseif strcmp(InitialMatrix{i, j}, 'furnished')
                column_count = column_count + 1;
                FeatureMatrix(i, j) = 0;
                FeatureMatrix(i, j + 1) = 0;
            else
                % Se adauga elementele decalate
                FeatureMatrix(i, j + column_count) = str2num(InitialMatrix{i, j});
            end
        end
    end
end
