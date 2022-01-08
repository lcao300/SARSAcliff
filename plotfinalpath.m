function plotfinalpath(final_path, algo_name)
% plot final path of agent

finalcliff = zeros(1, 48);

for i=1:48
    if ( ismember(i, final_path) )
        finalcliff(i) = 1;
    end
end

finalcliff = reshape(finalcliff, 4,12);
title_str = ['Final path of ' algo_name ' agent through cliff'];
figure;
image(finalcliff, 'CDataMapping', 'scaled');
title(title_str);
colorbar

end

