%przetworzenie pliku wejsciowego na wyjsciowy
plik = fopen('uart_in.txt');
S_in = fscanf(plik,'%s');
fclose(plik);

wynik = ['X'];
for i=1:16
    wynik=[wynik,num2str(1)];
    tmp=num2str(fliplr(dec2bin(S_in(i))));
    wynik=[wynik,tmp];
    wynik=[wynik,num2str(0),num2str(0),num2str(0),num2str(0)];    
end
fileID = fopen('uart_out_MATLAB.txt','w');
fprintf(fileID,wynik);
fclose(fileID);
%usuniêcie spacji
plik_vivado = fopen('uart_out_VIVADO.txt');
S = fscanf(plik_vivado,'%s');
S= S(find(~isspace(S)));
fileID = fopen('uart_out_VIVADO_white_space.txt','w');
fprintf(fileID,S);
fclose(fileID);

%plik porównawszy
plik_weryfikacyjny = fopen('uart_weryfikacja.txt','w');
fprintf(plik_weryfikacyjny,S);
fprintf(plik_weryfikacyjny,'\n');
fprintf(plik_weryfikacyjny,wynik);
fclose(plik_weryfikacyjny);