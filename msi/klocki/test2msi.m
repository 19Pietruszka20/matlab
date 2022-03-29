%Init=ReadSTRIPS('Initial.txt');
%Final=ReadSTRIPS('Final.txt');

%Je�eli wczytywanie z pliku nie dzia�a to mo�na zadeklarowa� zmienne r�cznie:
%
Init=CreateBlocks(6);
Init=ontable('A',Init);
Init=on('B','A',Init);
Init=on('C','B',Init);
Init=on('D','C',Init);
Init=on('E','D',Init);
Init=holding('F',Init);
Final=CreateBlocks(6);
Final=ontable('F',Final);
Final=on('E','F',Final);
Final=on('D','E',Final);
Final=on('C','D',Final);
Final=on('B','C',Final);
Final=on('A','B',Final);
%Final=ontable('A',Final);

% Na obecn� chwil� dost�pne s� 2 alorytmy planowania
SolutionsBF=BruteForce(Init,Final);
SolutionsH=Heuristic(Init,Final);

% Ta funkcja s�u�y jedynie do wy�wietlania kolejnych krok�w. Nie jest potrzebna
Path=FinalPath(SolutionsBF);
%Path=FinalPath(SolutionsH);

disp('Algorytm heurystyczny');
disp(['liczba krok�w: ' num2str(SolutionsH(size(SolutionsH,2)).cost(1)) ]);
disp(['przeanalizowano ' num2str(size(SolutionsH,2)) ' przypadk�w']);

disp('Przegl�d zupe�ny');
disp(['liczba krok�w: ' num2str(SolutionsBF(size(SolutionsBF,2)).cost(1)) ]);
disp(['przeanalizowano ' num2str(size(SolutionsBF,2)) ' przypadk�w']);
