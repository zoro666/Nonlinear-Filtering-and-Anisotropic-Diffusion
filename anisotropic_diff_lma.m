%%%%%%%%%%%%% anisotropic_diff_lma.m file %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Purpose:  
%       To perform anisotropic diffusion on input image
% 
% Input Variables:
%      I       input 2D image
%      lambda  value of lambda for diffusion
%       k      value of k for the function g(.)(L14-12)
%     typeg    type of g(.) it can be exponentail('exp') or quadratic('quad')
% 
% Returned Results:
%      I2     Output image after anisotropic diffusion
%
% Processing Flow:
%      1.  Define output image
%      2.  Pixelwise perform gradient in north,south,east,west direction.  
%      3.  Find conduction coefficient of north,south,east,west gradient.
%      4.  Perform anisotropic implementation for the pixel.
%      5.  Clip intensity levels depending on threshold(0 and 255).
%      6.  Continue for next pixel. 
%
%  Restrictions/Notes:
%     Choose proper k and lambda for better diffusion
%
%  The following functions are called:
%      ConductionCoeff.m    returns conduction coefficient of input
%                           gradient levels depending upon k and type 
%                           of function to be used
%      
%  Author:      Mandar Parab, Amogh Adishesha and Lyuzhou Zhuang
%  Date:        03/26/2017
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [ I2 ] = anisotropic_diff_lma( I,lambda,k,typeg )
[r,c]=size(I);
I2=zeros(size(I));

GNI=0;GSI=0;GEI=0;GWI=0;

    for i=2:r-1 
        for j=2:c-1
%% for diffusion in north direction
            GNI=I(i-1,j)-I(i,j);
            [cN] = ConductionCoeff( GNI,k,typeg );

%% for diffusion in south direction
            GSI=I(i+1,j)-I(i,j);
            cS = ConductionCoeff( GNI,k,typeg );

%% for diffusion in east direction
            GEI=I(i,j+1)-I(i,j);
            cE = ConductionCoeff( GEI,k,typeg );

%% for diffusion in west direction
 
            GWI=I(i,j-1)-I(i,j);
            cW = ConductionCoeff( GWI,k,typeg );           
            
%% anisotropic (discrete) implementation
        I2(i,j) = I(i,j) + (((cN*GNI)+(cS*GSI)+(cE*GEI)+(cW*GWI))*lambda);
            if I2(i,j)>=1
                I2(i,j)=1;
            end
            if I2(i,j)<=0
                I2(i,j)=0;
            end
        
        end
    end
end

