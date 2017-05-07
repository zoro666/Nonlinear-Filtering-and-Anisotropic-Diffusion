%%%%%%%%%%%%% medianfilt.m file %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Purpose:  
%       To perform median filtering of image.
%       
% 
% Input Variables:
%      A       input 2D reference image
%      s1, s2       size of filter mask (7x7)
%     
%     
%                                           
% Returned Results:
%       B       Median filter output
%                                           i
%
% Processing Flow:
%      1.  Load input image
%      2.  Apply filter using medianfilt function
%      3.  Display output Image and plot histogram
%
%  Restrictions/Notes:
%      None
%
%
%  The following functions are called:
%      medianfilt.m         performs s1xs2 mean filtering of image
%
%
%  Author:      Mandar Parab, Amogh Adishesha and Lyuzhou Zhuang
%  Date:        03/26/2017
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function[B]= medianfilt(A,s1,s2)

B = medfilt2(A, [s1 s2]);
% figure
% subplot(2,2,1);
% imshow(A);
% title('original image')
% subplot(2,2,2);
% imshow(B);
% title('7x7 median filter')
% his0=imhist(A);
% his1=imhist(B);
% subplot(2,2,3);
% plot(his0);
% subplot(2,2,4);
% plot(his1);