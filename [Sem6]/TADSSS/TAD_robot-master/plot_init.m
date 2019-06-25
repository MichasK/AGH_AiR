function  [] = plot_init(robots)
%Funkcja wywo³ywana na pocz¹tku, ustalenie kolorów dla ka¿dego z robotów,
%otwarcie okna, zapisanie legendy do pliku.
i =0;
figure(1)
hold on;
for robot = robots
    robot.color_of_plot=rand(1,3)
    plot(1,i,'Color',robot.color_of_plot,'Marker', '*','DisplayName',num2str(robot.id))
    legend show;
    i=i+1;
end
saveas(1,'Plots/plot_legend_init.jpg','jpg')
close all;

figure('units','normalized','outerposition',[0 0 1 1])
hold on;


end

