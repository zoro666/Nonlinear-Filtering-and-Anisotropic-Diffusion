%%%%%%%%%%%%% mainpart2.m file %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Purpose:  
%       To perform anisotropic diffusion on cwheelnoise.gif and lake.tif
%       image
% 
% Input Variables:
%      I       input 2D reference image
%      k       value of k for the function g(.)
%      lambda  value of lambda for anisotropic implementation
%     typeg    type of function to be used(exponential'exp' or quadratic'quad')
%     I0,I5,I15,I30,I50,I100   original image, and images after
%                              5,15,30,50,100 iteration respectively.
%     yline      value of y=? to be plotted
%    threshold  setting threshold for image segmentation
%    hist0,hist5,hist15,hist30,hist50,hist100    Histogram of original
%                                           image,image after 5,15,30,50,100 
%                                           iterations respectively.
% Returned Results:
%      hist0,hist5,hist15,hist30,hist50,hist100    Histogram of original
%                                           image,image after 5,15,30,50,100 
%                                           iterations respectively.
%      Is0,Is5,Is15,Is30,Is50,Is100     segmented original image, image
%                                       after 5,15,30,50,100 iteration
%      I0,I5,I15,I30,I50,I100     original image, image
%                                       after 5,15,30,50,100 iteration
%
% Processing Flow:
%      1.  Load input image and check for anpther dimension(p in case of .tif images).
%      2.  Save original image for comparison purposes 
%      3.  Choose k,lambda,typeg for anisotropic diffusion
%      4.  Start iterations and save images after 5,15,30,50,100 iterations. 
%      5.  Plot these images
%      6.  Find their histogram and plot them 
%      7.  Specify value of line y of image to be plot and plot these
%      values for all iteration cases
%      8.  Specify threshold and perform image segmentation on all cases.
%
%  Restrictions/Notes:
%      This function requires 2D image as input. Check the p(transparency) 
%       dimension of images it should be 1. While plotting y line check if
%       the line specified is in image. it wont print if it goes beyond
%       image dimension. ShowImage.m and selective_intensity_plt.m 
%       function only plots only 6 images
%       similarly ShowHist.m plots only 6 plots.
%
%
%  The following functions are called:
%      anisotropic_diff_lma.m       performs anisotropic diffusion of
%                                   image
%      ShowImage_lma.m              plots images
%      CountNumInMat.m              Count pixels of gray levels in images.
%                                   It is used for plotting histogram  
%      ShowHist_lma.m               Plots histogram of images
%      selective_intensity_plt.m    Plots yline from images.
%      segmentation_lma.m           performs image segmentation based upon 
%                                   threshold     
%
%  Author:      Mandar Parab, Amogh Adishesha and Lyuzhou Zhuang
%  Date:        03/26/2017
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc;clear all;clear;      % Clear out all memory 

I=imread('cwheelnoise.gif');    %% use this image for cwheelnoise.gif
% I=imread('lake.tif');         %% uncomment this for lake.tif image
[m,n,p]=size(I);
if p>1
    I=I(:,:,1);
end
I=im2double(I);
disp('read input image and convert to 2-D image')
I=im2double(I);
%% Perform anisotropic diffusion
I0 = I ;
I0 = im2uint8(I0);          %% saving original image
k=25/255;                   %% choose k as per wish. Here it is normalised since image is double
lambda=0.25;                %% choose lambda
typeg='quad';                 %% choose this for g(.) function.Either exponential or quadratic
itr=0;                      %% start iteration
for t=0:99
itr=itr+1;
% calling anisotropic diffusion function
I = anisotropic_diff_lma( I,lambda,k,typeg);
% Saving images for 5,15,30,50,100 iterations
 if itr==5
     I5 =  I ;
     I5 = im2uint8(I5);
     disp('image saved after 5 iterations')
 end
 if itr==15
     I15 =  I ;
     I15 = im2uint8(I15);
     disp('image saved after 15 iterations')
 end
 if itr==30
     I30 =  I;
     I30 = im2uint8(I30);
     disp('image saved after 30 iterations')
 end
 if itr==50
     I50 =  I ;
     I50 = im2uint8(I50);
     disp('image saved after 50 iterations')
 end
 if itr==100
     I100 =  I ;
     I100 = im2uint8(I100);
     disp('image saved after 100 iterations')
 end
end
%% Plotting desired images
ShowImage_lma( I0,I5,I15,I30,I50,I100 )
disp('plotted Images')
%% Determining and plotting histogram of images
hist0 = CountNumInMat( I0 );
hist5 = CountNumInMat( I5 );
hist15 = CountNumInMat( I15 );
hist30 = CountNumInMat( I30 );
hist50 = CountNumInMat( I50 );
hist100 = CountNumInMat( I100 );
ShowHist_lma( hist0,hist5,hist15,hist30,hist50,hist100 )
disp('Histogram shown')
%% Plotting line y=128
yline=128;                          %% line number of y
disp('plotting line y=128')
selective_intensity_plt( I0,I5,I15,I30,I50,I100,yline )
%% Image segmentation
disp('performing image segmentation')
threshold=100;
Is0 = segmentation_lma( I0,threshold );
Is5 = segmentation_lma( I5,threshold );
Is15 = segmentation_lma( I15,threshold );
Is30 = segmentation_lma( I30,threshold );
Is50 = segmentation_lma( I50,threshold );
Is100 = segmentation_lma( I100,threshold );
ShowImage_lma( Is0,Is5,Is15,Is30,Is50,Is100 )
disp('finish!')