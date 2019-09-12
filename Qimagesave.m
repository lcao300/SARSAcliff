function Qimagesave(count,Qup,Qdown,Qleft,Qright)

% make gif of Q values over time

countstr = num2str(count);
filename = countstr;

f = figure('visible','off');
axis tight manual

sgtitle('Q values')

h = [];
h(1) = subplot(2,2,1);
h(2) = subplot(2,2,2);
h(3) = subplot(2,2,3);
h(4) = subplot(2,2,4);

image(Qup,'Parent',h(1));
title(h(1),'Up')

image(Qdown,'Parent',h(2));
title(h(2),'Down')

image(Qleft,'Parent',h(3));
title(h(3),'Left')

image(Qright,'Parent',h(4));
title(h(4),'Right')


fpath = [pwd '/Qimages'];

saveas(f,fullfile(fpath,filename),'png');


end

