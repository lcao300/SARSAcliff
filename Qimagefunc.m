function Qimagefunc(count,Q)

% Q up moves
Qup = reshape(Q(:,1),4,12);

% Q down moves
Qdown = reshape(Q(:,2),4,12);

% Q left moves
Qleft = reshape(Q(:,3),4,12);

% Q right moves
Qright = reshape(Q(:,4),4,12);

Qimagesave(count,Qup,Qdown,Qleft,Qright);

end

