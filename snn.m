%%%%%%%%%%%%% snn.m file %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Purpose:  
%       To perform SNN filtering of image.
%
% Input Variables:
%      asd      7x7 mask of input image
%     
%                                              
% Returned Results:
%       f       SNN filter output single value of a point
%                                        
%
% Processing Flow:
%      1.  Load 7x7 matrix asd which is a patch of the input image
%      2.  Take the absolute differences of opposite and symmetric values
%      with Xk(central value) and find the one with lesser difference and
%      keep it while discarding the other.
%      3.  The average of these values is found and assigned to Xk 
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
function [f ] = snn(asd)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
[x,y]=size(asd);
qw=x;
er=y;
jkl=round(((x*y)/2)-1);
d=round(x/2);
C=[];
for h=1:x
    for g=1:y       
        r=abs(asd(h,g)-asd(d,d));
        t=abs(asd(qw-h+1,er-g+1)-asd(d,d));
        if r<=t
           C=[C asd(h,g)]; 
        else
           C=[C asd(qw-h+1,er-g+1)]; 
        end   
        wer=length(C);
        if wer>jkl-1
            break;
        end
    end
    if wer>jkl-1
        break;
    end
end
d= sum(C);
o=length(C);
f=d/o;
end

