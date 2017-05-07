%%%%%%%%%%%%% selective_intensity_plt.m file %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Purpose:  
%       To plot specified line y of images of 2D image
% 
% Input Variables:
%      I0       Input 2D original image
%      I5       Input image after 5 iteration
%      I15       Input image after 15 iteration
%      I30       Input image after 30 iteration
%      I50       Input image after 50 iteration
%      I100       Input image after 100 iteration
%       i       specify line y
% 
% Returned Results:
%      None
%
% Processing Flow:
%      1.  Input images.
%      2.  If output argument is zero then show plot of line y.  
%
%  Restrictions/Notes:
%     Output needs to be empty and y as to be specifed. This function only
%     plots line y.
%
%  The following functions are called:
%      None
%      
%  Author:      Mandar Parab, Amogh Adishesha and Lyuzhou Zhuang
%  Date:        03/26/2017
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [  ] = selective_intensity_plt( I0,I5,I15,I30,I50,I100,i )
[r,c]=size(I0);
if nargout == 0
figure

subplot(321)
plot(I0(:,i))
title('plot of y of original image')
% xlim([0 r])

subplot(322)
plot(I5(:,i))
title('plot of y of image after 5 iteration')
% xlim([0 r])

subplot(323)
plot(I15(:,i))
title('plot of y of image after 15 iteration')
% xlim([0 r])

subplot(324)
plot(I30(:,i))
title('plot of y of image after 30 iteration')
% xlim([0 r])

subplot(325)
plot(I50(:,i))
title('plot of y of image after 50 iteration')
% xlim([0 r])

subplot(326)
plot(I100(:,i))
title('plot of y of image after 100 iteration')
% xlim([0 r])

end


end

