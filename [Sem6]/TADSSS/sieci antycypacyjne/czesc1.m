clear all;
close all;
M=9999;
% last=9;
% graf_kryt(:,:,1)=  [M 1 M M M M M M M;
%                     M M 2 10 2 M M M M;
%                     M M M M M 2 2 M M;
%                     M M M M M 15 4 M M;
%                     M M M M M M M 21 M;
%                     M M M M M M M M 54;
%                     M M M M M M M M 40;
%                     M M M M M M M M 15;
%                     M M M M M M M M M];
%    
%    
% sprzezenia=[0 0 0 0 0 0 0 0 0;
%             0 0 1 1 1 1 1 1 0;
%             0 0 0 0 0 0 0 0 0;
%             0 0 0 0 0 0 0 0 0;
%             0 0 1 1 1 1 1 1 0;
%             0 0 0 0 0 0 0 0 0;
%             0 0 0 0 0 0 0 0 0;
%             0 0 0 0 0 0 0 0 0;
%             0 0 0 0 0 0 0 0 0];

% 
% last=7;
% graf_kryt(:,:,1)=  [M 1 M M M M M;
%                     M M 3 12 M M M;
%                     M M M M 9 M M;
%                     M M M M 2 M M;
%                     M M M M M 12 4;
%                     M M M M M M 2;
%                     M M M M M M M];
%    
% graf_kryt(:,:,1)=  [M 1 M M M M M;
%                     M M 21 15 M M M;
%                     M M M M 141 M M;
%                     M M M M 15 M M;
%                     M M M M M 11 100;
%                     M M M M M M 6;
%                     M M M M M M M];
%    
% sprzezenia=[0 0 0 0 0 0 0;
%             0 0 1 1 1 1 0;
%             0 0 0 0 0 0 0;
%             0 0 0 0 0 0 0;
%             0 0 0 0 0 0 0;
%             0 0 0 0 0 0 0;
%             0 0 0 0 0 0 0];


last=12;
graf_kryt(:,:,1)=[M 1 2 4 M M M M M M M M;
    M M M M 3 M 4 M M M M M;
    M M M M 2 1 M M M M M M;
    M M M M M M 5 M M M M M;
    M M M M M M 2 M M M M M;
    M M M M M M 2 M M M M M;
    M M M M M M M 4 5 M M M;
    M M M M M M M M M 2 3 M;
    M M M M M M M M M M 1 3;
    M M M M M M M M M M M 1;
    M M M M M M M M M M M 3;
    M M M M M M M M M M M M];
   
graf_kryt(:,:,2)=[M 3 2 1 M M M M M M M M;
    M M M M 2 M 3 M M M M M;
    M M M M 2 3 M M M M M M;
    M M M M M M 2 M M M M M;
    M M M M M M 3 M M M M M;
    M M M M M M 2 M M M M M;
    M M M M M M M 4 3 M M M;
    M M M M M M M M M 2 1 M;
    M M M M M M M M M M 1 4;
    M M M M M M M M M M M 2;
    M M M M M M M M M M M 3;
    M M M M M M M M M M M M];
   
sprzezenia=[0 1 1 1 1 1 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 1 1 1 1 0;
    0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0];
    
sprzezenia=[0 1 1 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0];
[found_paths1,found_pathto1]=anticipation(graf_kryt(:,:,1),sprzezenia,M,12);
% [found_paths2,found_pathto2]=anticipation(graf_kryt(:,:,2),sprzezenia,M,12);
% found_paths =[0 0 0 0 0 0 0 0 0 0 0 0;
%  1 4 0 0 0 0 0 0 0 0 0 0;
%  1 2 5 0 0 0 0 0 0 0 0 0;
%  1 2 7 0 0 0 0 0 0 0 0 0;
%  1 3 6 0 0 0 0 0 0 0 0 0;
%  4 7 0 0 0 0 0 0 0 0 0 0;
%  5 7 0 0 0 0 0 0 0 0 0 0;
%  7 8 0 0 0 0 0 0 0 0 0 0;
%  7 9 0 0 0 0 0 0 0 0 0 0;
%  6 7 8 0 0 0 0 0 0 0 0 0;
%  6 7 9 0 0 0 0 0 0 0 0 0;
%  8 10 0 0 0 0 0 0 0 0 0 0;
%  8 11 0 0 0 0 0 0 0 0 0 0;
%  9 11 0 0 0 0 0 0 0 0 0 0;
%  9 12 0 0 0 0 0 0 0 0 0 0;
%  10 12 0 0 0 0 0 0 0 0 0 0;
%  11 12 0 0 0 0 0 0 0 0 0 0];
valid_paths1=found_paths1(2:size(found_paths1,1),:);
% valid_paths2=found_paths2(2:size(found_paths2,1),:);
final_paths(:,:,1)=complete_paths(valid_paths1,last);
% final_paths(:,:,2)=complete_paths(valid_paths2,last);
undominated_solutions=pick_undominated(final_paths,1,graf_kryt,sprzezenia,M);
% %% dimension (drugi argument na 2)