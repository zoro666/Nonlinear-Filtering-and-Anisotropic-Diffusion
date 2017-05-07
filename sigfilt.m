%%%%%%%%%%%%% sigfilt.m file %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Purpose:  
%       To perform sigma filtering of image.
%
% Input Variables:
%      asd      7x7 mask of input image
%     
%                                              
% Returned Results:
%       f       sigma filter output single value of a point
%                                        
%
% Processing Flow:
%      1.  Load 7x7 matrix asd which is a patch of the input image
%      2.  take the absolute differences of all values with the value
%      ofXk(central value) and check if difference is within 2-sigma(95.4%)
%      3.  If greyscale is within this difference then assign 1 else 0
%      4.  The values in asd with 1 assigned to it are avereged 
%
%  Restrictions/Notes:
%      None
%
%
%  The following functions are called:
%      None                              
%
%
%  Author:      Mandar Parab, Amogh Adishesha and Lyuzhou Zhuang
%  Date:        03/26/2017
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [ f ] = sigfilt( asd )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
[h,g]=size(asd);
r=zeros(h,g);
d=round(h/2);
for x=1:h
    for y=1:g
        r(x,y)=abs(asd(x,y)-asd(d,d));
    end
end
u=r<41;
u=double(u);
Nc=sum(sum(u));
t=times(asd,u);
f=(sum(sum(t))/Nc);
end

