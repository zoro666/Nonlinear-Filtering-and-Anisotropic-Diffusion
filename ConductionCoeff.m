%%%%%%%%%%%%% ConductionCoeff.m file %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Purpose:  
%       To determine conduction coefficient 
% 
% Input Variables:
%      I       gradient value of image
%       k      value of k for the function g(.)(L14-12)
%     typeg    type of g(.) it can be exponentail('exp') or quadratic('quad')
% 
% Returned Results:
%      cc     Output conduction coefficient
%
% Processing Flow:
%      1.  Define absolute value of gradients.
%      2.  Find the desired function specified.  
%      3.  Determine conduction coefficient with the particular function.
%
%  Restrictions/Notes:
%     Choose proper k for finding coefficients
%
%  The following functions are called:
%      None
%      
%  Author:      Mandar Parab, Amogh Adishesha and Lyuzhou Zhuang
%  Date:        03/26/2017
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [ cc ] = ConductionCoeff( I,k,typeg )
normI=abs(I);
if strcmp(typeg,'exp') == 1
    cc = exp(-1*((normI/k)^2));
end
if strcmp(typeg,'quad') == 1
    cc = 1/(1+((normI/k)^2));
end
end

