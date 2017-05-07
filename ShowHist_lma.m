%%%%%%%%%%%%% ShowHist_lma.m file %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Purpose:  
%       To plot histograms of images
% 
% Input Variables:
%      hist0       Histogram of original image
%      hist5       Histogram of image after 5 iteration
%      hist15      Histogram of image after 15 iteration
%      hist30      Histogram of image after 30 iteration
%      hist50      Histogram of image after 50 iteration
%      hist100     Histogram of image after 100 iteration
% 
% Returned Results:
%      None
%
% Processing Flow:
%      1.  Input histograms of images.
%      2.  If output argument is zero then plot histograms.  
%
%  Restrictions/Notes:
%     This function is called after CountNumInMat.m function.
%
%  The following functions are called:
%      None
%      
%  Author:      Mandar Parab, Amogh Adishesha and Lyuzhou Zhuang
%  Date:        03/26/2017
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [ ] = ShowHist_lma( hist0,hist5,hist15,hist30,hist50,hist100)

if nargout == 0
figure
subplot(321)
plot(hist0)
title('histogram of original image')
xlim([0 257])
subplot(322)
plot(hist5)
title('histogram after 5 iteration')
xlim([0 257])
subplot(323)
plot(hist15)
title('histogram after 15 iteration')
xlim([0 257])
subplot(324)
plot(hist30)
title('histogram after 30 iteration')
xlim([0 257])
subplot(325)
plot(hist50)
title('histogram after 50 iteration')
xlim([0 257])
subplot(326)
plot(hist100)
title('histogram after 100 iteration')
xlim([0 257])
end

end

