% zadanie 4.2 - metoda linearyzacji
a = -2;
b = 1;
c = 2;
dxdt = @(t,x) [x(2)-x(1)+x(1).^3;-x(1)];

title('Portret fazowy')
hold on;
tspan = 0:0.1:30;
for i=a:b:c
    for j=a:b:c
        x0 = [i;j];
        [t,y] = ode45(dxdt, tspan, x0);
        plot(y(:,1), y(:,2), 'b')
        %plot(i, j, 'rx')
    end
end
xlim([a-0.5 c+0.5])
ylim([a-0.5 c+0.5])

% linearyzacja

% macierz A jest postaci:
% [-1 + 3x1^2, 1; -1, 0];
% punkt równowagi gdy:
% -x1 = 0 oraz x2 - x1 + x1^3 = 0
% st¹d punktem równowagi jest punkt x1 = 0, x2 = 0
% wtedy macierz A jest postaci:
A = [-1, 1; -1, 0];
slad = eig(A)
fprintf('Wartosc wlasna 1: %f + %fj\n', real(slad(1)), imag(slad(1)))
fprintf('Wartosc wlasna 2: %f + %fj\n', real(slad(2)), imag(slad(2)))
% obie maja czesc rzeczywista ujemna
% zatem punkt rownowagi 0,0 jest asymptotycznie stabilny (str. 29 skrypt)
for i=a:b:c
    for j=a:b:c
        x0 = [i;j];
        [t,y] = ode45(@(t,x) A*x, tspan, x0);
        plot(y(:,1), y(:,2), 'r-')
        %plot(i, j, 'rx')
    end
end


% komentarz: na czerwono liniowe przyblizenie, na niebiesko uklad
% nieliniowy
% widac ze dla punktow oddalonych od (0,0) trajektorie uciekaja,
% natomiast dla liniowego zbiegaja do (0,0) 
% widac ze to przyblizenie jest dobre tylko blisko (0,0) a potem
% jest coraz mniej dokladnie (Grobman Hartman)