%%%%%%%%%%%%% alphatrim.m file %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Purpose:  
%       To perform alpha trimmed mean filtering of image.
%
% Input Variables:
%      asd      7x7 mask of input image
%     
%                                              
% Returned Results:
%       f       Alpha-Mean trimmed filter output single value of a point
%                                        
%
% Processing Flow:
%      1.  Load 7x7 matrix asd which is a patch of the input image
%      2.  Reshape it into a single row vector
%      3.  Sort the vector in increasing order
%      4.  Select values only between 13-37 ( alpha=0.25, n=49, N=24)
%      5.  Find the mean of the middle 25 values.
%
%  Restrictions/Notes:
%      None
%
%
%  The following functions are called:
%      sort.m      sorts array in ascending order                                
%
%
%  Author:      Mandar Parab, Amogh Adishesha and Lyuzhou Zhuang
%  Date:        03/26/2017
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [f ] = alphatrim( asd )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

asd1= reshape(asd,1,49);
G=sort(asd1);
G1=G(13:37);
f=(sum(G1)/25);
end
