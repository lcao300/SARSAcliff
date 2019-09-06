function Qimagesave(count,Q)

% make gif of Q values over time

countstr = num2str(count);
filename = countstr;

f = figure('visible','off');
axis tight manual
image(Q);
colorbar

fpath = [pwd '/Qimages'];

saveas(f,fullfile(fpath,filename),'png');


end

