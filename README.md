# LinearRegression
1. function [Y, InitialMatrix] = parse_data_set_file:

Această funcție primește ca argument un șir de caractere file_path care reprezintă calea către un fișier care conține date de intrare, și returnează o matrice InitialMatrix și o celulă Y.

2. function [FeatureMatrix] = prepare_for_regression:

Funcția parcurge fiecare element din InitialMatrix și atribuie valorile corespunzătoare matricei FeatureMatrix. Dacă valoarea este yes, se atribuie 1, iar dacă este no, se atribuie 0. Dacă valoarea este semi-furnished, se setează 1 pe prima coloană și 0 pe a doua coloană, iar dacă valoarea este unfurnished, se setează 0 pe prima coloană și 1 pe a doua coloană. Dacă valoarea este furnished, se setează 0 pe ambele coloane. În caz contrar, valoarea este convertită într-un număr și atribuită matricei FeatureMatrix.

3. function [Error] = linear_regression_cost_function:

Această funcție implementează formula funcției de cost și o returnează in "Error"

4. function [Y, InitialMatrix] = parse_csv_file:

Această funcție primește o cale relativă către un fișier CSV și stochează, excluzând prima linie, în Y prima coloană, iar în InitialMatrix restul.

5. function [Theta] = gradient_descent:

Această funcție implementează formula gradientului funcției de cost, cu ajutorul căruia calculează vectorul de weights și îl returnează în "Theta"

6. function [Theta] = normal_equation:

Această funcție implementează formula gradientului conjugat.

7. function [Error] = lasso_regression_cost_function:

Această funcție implementează formula funcției de cost regularizat L1.

8. function [Error] = ridge_regression_cost_function:

Această funcție implementează formula funcției de cost regularizat L2.