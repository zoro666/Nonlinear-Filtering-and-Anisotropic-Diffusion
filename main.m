%%%%%%%%%%%%% main.m file %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Purpose:  
%       To perform various kinds of filtering on cwheelnoise.gif and
%       disk.gif images
%       
% 
% Input Variables:
%      A       input 2D reference image
%      s1, s2       size of filter mask
%     
%     
%                                           
% Returned Results:
%       B       Median filter output
%       R       Alpha-Mean trimmed filter output
%       K       Sigma filter output
%       P       SNN filter output
%       
%                                           i
%
% Processing Flow:
%      1.  Load input image
%      2.  Pass image through specific functions for performing filtering
%      3.  Repeat the function call to reiterate through the filters
%      4.  Display Images
%      5.  Find their histogram and plot them 
%
%  Restrictions/Notes:
%      None
%
%
%  The following functions are called:
%      medianfilt.m       performs 7x7 median filtering of image                                 
%      alpha.m            performs 7x7 alpha-mean trimmed filtering of img
%      sigmamain.m        performs 7x7 sigma filtering if image 
%      snnmain.m          performs 7x7 SNN filtering of image. 
%      meanandsd.m        Extracts mean and variance of defined region
    
%
%  Author:      Mandar Parab, Amogh Adishesha and Lyuzhou Zhuang
%  Date:        03/26/2017
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc;
clear;
close all;
A= imread('disk.gif');
s1=7;
s2=7;
B= medianfilt(A,s1,s2);
B1=B;
for i=1:4
    B1=medianfilt(B1,s1,s2);
end

R =alpha(A,s1);
R1=R;
for i=1:4
    R1=alpha(R1,s1);
end

K=sigmamain(A,s1);
K1=K;
for i=1:4
    K1=sigmamain(K1,s1);
end
P =snnmain(A,s1);
P1=P;
for i=1:4
    P1=snnmain(P1,s1);
end
figure
subplot(2,2,1)
imshow(B);
title('Meadian filter');
subplot(2,2,2)
imshow(R);
title('Alpha-mean trimmed filter');
subplot(2,2,3)
imshow(K);
title('Sigma filter');
subplot(2,2,4)
imshow(P);
title('SNN filter');
