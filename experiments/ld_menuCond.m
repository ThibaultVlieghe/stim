function ld_menuCond(param)
%MENU_D_ONE Summary of this function goes here
%   Detailed explanation goes here
%
%
% Vo An Nguyen 2010/10/07
% Arnaud Bore 2012/10/05, CRIUGM - arnaud.bore@gmail.com
% Arnaud Bore 2014/10/31 
% EG March 9, 2015     
% Arnaud Bore 2016/06/02
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
global D_EXPERIMENT;
    nextMenu = 1;
    
switch D_EXPERIMENT
    case 'Condition_A'
        while nextMenu
            choice = menu(...
                           strcat('Menu - ', D_EXPERIMENT),...
                           'Rest', ...  
                           'Verification',...
                           'Intro',...
                           'Task1',...
                           'Task2',...
                           'Testing',...
                           'Quit'...
                           );
            sessionName = D_EXPERIMENT;
            switch choice
                case 1
                    ld_rest(param);
                case 2           
                    param.task = ['Verification - ', sessionName];
                    ld_verification(param);        
                case 3
                    param.task = ['Intro - ', sessionName];
                    ld_intro(param);
                case 4
                    param.task = ['Task - ', 'Condition_A'];
                    % ^ Attention: solution tr�s artificielle et dangereuse en termes de confusion
                    % � modifier
                    ld_task(param);
                case 5
                    param.task = ['Task - ', 'Condition_B'];
                    % ^ Attention: solution tr�s artificielle et dangereuse en termes de confusion
                    % � modifier
                    ld_task(param);
                case 6
                    param.task = ['Task - ', 'Testing'];
                    % to implement yet
                    ld_task(param);
                case 7
                    break;
            end
        end
    otherwise
        while nextMenu
            choice = menu(...
                           strcat('Menu - ', D_EXPERIMENT),...
                           'Rest', ...  
                           'Verification',...
                           'Testing',...
                           'Quit'...
                           );
            sessionName = D_EXPERIMENT;
            switch choice
                case 1
                    ld_rest(param);
                case 2           
                    param.task = ['Verification - ', sessionName];
                    ld_verification(param);
                case 3
                    param.task = ['Task - ', 'Testing'];
                    % to implement yet
                    ld_task(param);
                case 4
                    break
            end
        end
end

% while nextMenu
%     choice = menu(...
%                    strcat('Menu - ', D_EXPERIMENT),...
%                    'Rest', ...  
%                    'Verification',...
%                    'Intro',...
%                    'Task',...
%                    'Quit'...
%                    );
%     sessionName = D_EXPERIMENT;
%     switch choice
%         case 1
%             ld_rest(param);
%         case 2           
%             param.task = ['Verification - ', sessionName];
%             ld_verification(param);        
%         case 3
%             param.task = ['Intro - ', sessionName];
%             ld_intro(param);
%         case 4
%             param.task = ['Task - ', sessionName];
%             ld_task(param);
%         case 5
%             break;
%     end
% end