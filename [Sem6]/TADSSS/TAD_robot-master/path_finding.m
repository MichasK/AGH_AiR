%find_initial_crossroad
%to dzia�a na zasadzie sonaru, robot wysy�a
% sygna� pionowo i poziomo, jak sygna� trafi
% w skrzy�owanie to jest najbli�sze,
% jak nie trafi to czeka kt�re sygna�y pierwsze si�
% sko�cz�, to znaczy �e tam s� �ciany 
% (to nie powinno waln��, chyba �e b�d� startowa�y
% na jakim� placu), potem jak dowie si�
% czy ma wi�cej przestrzeni w pionie czy poziomie
% to leci takim wla�nie sonarem o szeroko�ci kr�tszego
% po d�u�szym i sprawdza czy s� tam skrzy�owania.
% wybiera pierwsze jakie znajdzie (je�eli to b�dzie 
% znaczy�o �e ma si� cofna� to b�dzie to musia�
% skorygowa� ten co napisze szukanie �cie�ki po
% grafie skrzy�owa�
left_x=start_x;
right_x=start_x;
up_y=start_y;
down_y=start_y;
stopflag_left=0;
stopflag_right=0;
stopflag_up=0;
stopflag_down=0;
stopflag=0;
horizontal_vertical=0;%0 to korytarz jest kr�tszy poziomo, 1 to korytarz jest kr�tszy pionowo
while(1)
    if(stopflag_left==1&&stopflag_right==1)%je�eli natkn�li�my si� na koniec korytarza z obu stron poziomo - to leci poziomo
        horizontal_vertical=0;
        break;
    end
    if(stopflag_up==1&&stopflag_down==1)
        horizontal_vertical=1;
        break;
    end
    if(stopflag_left==0)%nie inkrementujemy, gdy dotarli�my do ko�ca korytarza z danej strony
        left_x=left_x-1;
    end
    if(stopflag_right==0)
        right_x=right_x+1;
    end
    if(stopflag_up==0)
        up_x=up_x+1;
    end
    if(stopflag_down==0)
        down_x=down_x-1;
    end
    if(map(left_x,start_y)==�CIANA)% jak walniemy w �cian� to nie inkrementujemy d�u�ej
        stopflag_left=1;
    end
    if(map(right_x,start_y)==�CIANA)
        stopflag_right=1;
    end
    if(map(up_x,start_y)==�CIANA)
        stopflag_up=1;
    end
    if(map(down_x,start_y)==�CIANA)
        stopflag_down=1;
    end
end
if horizontal_vertical==0 %je�eli korytarz kr�tszy w poziomie
    left_x=left_x+1;%cofamy z lewa i prawa, bo obecnie tkwimy w �cianie
    right_x=right_x-1;
    current_y=starter_y;%idziemy od obecnej pozycji
    while(stopflag~=1)
        for current_x=left_x:1:right_x
            if(map.is_a_crossroad(current_x,current_y))%musz� napisa� t� metod�, sprawdza czy ten punkt jest skrzy�owaniem (jest w grafie skrzy�owa�)
                closest_x=current_x; %wsp�rz�dne punktu
                closest_y=current_y;
                stopflag=1;
                break;
            else
                current_y=current_y-1;%idziemy w d�
            end
        end
    end
end
if horizontal_vertical==1
    down_x=down_x+1;
    up_x=up_x-1;
    current_x=starter_x;
    while(stopflag~=1)
        for current_y=down_y:1:up_y
            if(map.is_a_crossroad(current_x,current_y))
                closest_x=current_x;
                closest_y=current_y;
                stopflag=1;
                break;
            else
                current_x=current_x-1;
            end
        end
    end
end
%punkt to closest_x i closest_y