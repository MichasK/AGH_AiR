%find_initial_crossroad
%to dzia³a na zasadzie sonaru, robot wysy³a
% sygna³ pionowo i poziomo, jak sygna³ trafi
% w skrzy¿owanie to jest najbli¿sze,
% jak nie trafi to czeka które sygna³y pierwsze siê
% skoñcz¹, to znaczy ¿e tam s¹ œciany 
% (to nie powinno waln¹æ, chyba ¿e bêd¹ startowa³y
% na jakimœ placu), potem jak dowie siê
% czy ma wiêcej przestrzeni w pionie czy poziomie
% to leci takim wlaœnie sonarem o szerokoœci krótszego
% po d³u¿szym i sprawdza czy s¹ tam skrzy¿owania.
% wybiera pierwsze jakie znajdzie (je¿eli to bêdzie 
% znaczy³o ¿e ma siê cofnaæ to bêdzie to musia³
% skorygowaæ ten co napisze szukanie œcie¿ki po
% grafie skrzy¿owañ
left_x=start_x;
right_x=start_x;
up_y=start_y;
down_y=start_y;
stopflag_left=0;
stopflag_right=0;
stopflag_up=0;
stopflag_down=0;
stopflag=0;
horizontal_vertical=0;%0 to korytarz jest krótszy poziomo, 1 to korytarz jest krótszy pionowo
while(1)
    if(stopflag_left==1&&stopflag_right==1)%je¿eli natknêliœmy siê na koniec korytarza z obu stron poziomo - to leci poziomo
        horizontal_vertical=0;
        break;
    end
    if(stopflag_up==1&&stopflag_down==1)
        horizontal_vertical=1;
        break;
    end
    if(stopflag_left==0)%nie inkrementujemy, gdy dotarliœmy do koñca korytarza z danej strony
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
    if(map(left_x,start_y)==ŒCIANA)% jak walniemy w œcianê to nie inkrementujemy d³u¿ej
        stopflag_left=1;
    end
    if(map(right_x,start_y)==ŒCIANA)
        stopflag_right=1;
    end
    if(map(up_x,start_y)==ŒCIANA)
        stopflag_up=1;
    end
    if(map(down_x,start_y)==ŒCIANA)
        stopflag_down=1;
    end
end
if horizontal_vertical==0 %je¿eli korytarz krótszy w poziomie
    left_x=left_x+1;%cofamy z lewa i prawa, bo obecnie tkwimy w œcianie
    right_x=right_x-1;
    current_y=starter_y;%idziemy od obecnej pozycji
    while(stopflag~=1)
        for current_x=left_x:1:right_x
            if(map.is_a_crossroad(current_x,current_y))%muszê napisaæ t¹ metodê, sprawdza czy ten punkt jest skrzy¿owaniem (jest w grafie skrzy¿owañ)
                closest_x=current_x; %wspó³rzêdne punktu
                closest_y=current_y;
                stopflag=1;
                break;
            else
                current_y=current_y-1;%idziemy w dó³
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