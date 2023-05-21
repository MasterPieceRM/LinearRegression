function [Y, InitialMatrix] = parse_csv_file(file_path)
  % path -> a relative path to the .csv file
  
  % Y -> the vector with all actual values
  % InitialMatrix -> the matrix that must be transformed
  % Deschidere fisier CSV pentru citire
  fid = fopen(file_path, 'r');

  % Citirea fisierului CSV excluzand prima linie
  data = textscan(fid, '%s', 'Delimiter', '\n', 'HeaderLines', 1);
  data = data{1};

  % Initializare vector si matrice
  Y = zeros(size(data, 1), 1);
  InitialMatrix = cell(size(data, 1), size(strsplit(data{1}, ','), 2) - 1);

  % Parcurgere linie cu linie
  for i = 1 : size(data, 1)
      % Impartirea liniei in coloane
      linie = strsplit(data{i}, ',');

      % Citirea primei coloane (numere)
      Y(i) = str2double(linie{1});

      % Citirea restului matricei (numere/stringuri)
      InitialMatrix(i, :) = linie(2:end);
  end

  % Inchidere fisier
  fclose(fid);
endfunction