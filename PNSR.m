
% This funciton is to calculate Sum of absolute difference 
% between bayesian alpha % and ground truth alpha. 

% note: this function is applicable to version 2018b and above

function pnsrvalue = PNSR(alpha, GTalpha)

% check size of input before calculate sad
a=sizecheck(alpha, GTalpha);

if a==1
    msevalue = mse2d(alpha, GTalpha);
    max_pixel = max(GTalpha,[], 'all');
    pnsrvalue = 10 * log10((max_pixel^2) / msevalue);
end

end 