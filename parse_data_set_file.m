function [Y, InitialMatrix] = parse_data_set_file(file_path)
  fid = fopen(file_path, 'r');  % Deschide fișierul specificat prin `file_path` pentru citire
  size_line = fgetl(fid);  % Citește o linie din fișierul deschis prin `fid`
  size_values = strsplit(size_line);  % Separați elementele din linia citită anterior prin spațiu și le salvează în celule
  m = str2double(size_values{1});  % Număr de linii
  n = str2double(size_values{2});  % Număr de coloane
  Y = cell(m, 1);  % Inițializare vector coloană de tipul cell
  InitialMatrix = cell(m, n);  % Creează o matrice cu `m` linii și `n` coloane și o salvează în `InitialMatrix`
  for i = 1 : m
    line = fgetl(fid);  % Citește următoarea linie din fișierul deschis prin `fid`.
    values = strsplit(line);  % Separați elementele din linia citită anterior prin spațiu și le salvează în celule
    Y{i} = values{1};  % Salvează primul element al celulei `values` în rândul `i` din celula `Y`
    for j = 1 : n
      InitialMatrix{i,j} = values{j+1};
    end
  end
  Y = cellfun(@str2double, Y);  % Conversia tuturor elementelor din celula `Y` la tipul de date `double`
  fclose(fid);  % Închide fișierul deschis prin `fid`
endfunction
