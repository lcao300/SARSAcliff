function agentmovessave(count,count_ep,curr_state)

% make gif of agent over time

countstr = num2str(count);
underscorestr = '_';
countepstr = num2str(count_ep);
totalstr = strcat(countstr,underscorestr,countepstr);
filename = totalstr;

clifftask = zeros(1,48);

if ( mod(curr_state,4) == 0 && curr_state ~= 4 && curr_state ~= 48)
    clifftask(8) = 1;
    clifftask(12) = 1;
    clifftask(16) = 1;
    clifftask(20) = 1;
    clifftask(24) = 1;
    clifftask(28) = 1;
    clifftask(32) = 1;
    clifftask(36) = 1;
    clifftask(40) = 1;
    clifftask(44) = 1;
else
    clifftask(curr_state) = 1;
end

clifftask = reshape(clifftask,4,12);

f = figure('visible','off');
axis tight manual
title('Agent');

image(clifftask,'CDataMapping','scaled');
colorbar;

fpath = [pwd '/Agentimages'];

saveas(f,fullfile(fpath,filename),'png');


end

