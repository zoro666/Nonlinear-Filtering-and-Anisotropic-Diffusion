%%%%%%%%%%%%% ShowImage_lma.m file %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Purpose:  
%       To show images 
% 
% Input Variables:
%      I0       Input 2D original image
%      I5       Input image after 5 iteration
%      I15       Input image after 15 iteration
%      I30       Input image after 30 iteration
%      I50       Input image after 50 iteration
%      I100       Input image after 100 iteration
% 
% Returned Results:
%      None
%
% Processing Flow:
%      1.  Input images.
%      2.  If output argument is zero then show images.  
%
%  Restrictions/Notes:
%     Output needs to be empty and images need to be uint8 type
%
%  The following functions are called:
%      None
%      
%  Author:      Mandar Parab, Amogh Adishesha and Lyuzhou Zhuang
%  Date:        03/26/2017
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [  ] = ShowImage_lma( I0,I5,I15,I30,I50,I100 )

if nargout == 0
figure
imshow(I0)
title('original image')
figure
imshow(I5)
title('image after 5 iteration')
figure
imshow(I15)
title('image after 15 iteration')
figure
imshow(I30)
title('image after 30 iteration')
figure
imshow(I50)
title('image after 50 iteration')
figure
imshow(I100)
title('image after 100 iteration')

end
end

