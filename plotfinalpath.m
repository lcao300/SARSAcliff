function plotfinalpath(final_path)
% plot final path of agent

finalcliff = zeros(1,48);

for i=1:48
    if ( ismember(i,final_path) )
        finalcliff(i) = 1;
    end
end

finalcliff = reshape(finalcliff,4,12);

figure;
image(finalcliff,'CDataMapping','scaled');
title('Final path of agent through cliff');
colorbar

end

