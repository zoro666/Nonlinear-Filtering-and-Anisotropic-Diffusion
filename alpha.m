%%%%%%%%%%%%% alpha.m file %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Purpose:  
%       To perform alpha trimmed mean filtering of image.
%       
% 
% Input Variables:
%      A       input 2D reference image
%      fs       size of filter mask (7x7)
%     
%     
%                                           
% Returned Results:
%       V       Alpha-Mean trimmed filter output
%                                           i
%
% Processing Flow:
%      1.  Load input image
%      2.  Find a 7x7 sliding mask. 
%      3.  Appply filter over mask
%      4.  Display Images
%      5.  Find their histogram and plot them 
%
%  Restrictions/Notes:
%      None
%
%
%  The following functions are called:
%      maska.m      extracts a 7x7 mask over the image                                
%      alphatrim.m    performs 7x7 alpha-mean trimmed filtering of image
%
%
%  Author:      Mandar Parab, Amogh Adishesha and Lyuzhou Zhuang
%  Date:        03/26/2017
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function[V] =alpha(A,fs)
d=round(fs/2);
z= padarray(A,[3 3],'both');
[m1,n1]=size(z);
z=double(z);
C=zeros(m1,n1);
for i=d:m1-d+1
    for j= d:n1-d+1
        asd=maska(z,i,j,d);
        C(i,j)= alphatrim(asd);
    end
end
C= uint8(C);
C1= C(4:259,4:259);
V=C1;
% der=C(4:253,4:253);
% figure
% subplot(2,2,1)
% imshow(A);
% title('original')
% subplot(2,2,2)
% imshow(C);
% title('alphatrimmed mean filtered')
% his=imhist(A);
% his1=imhist(der);
% subplot(2,2,3)
% plot(his);
% subplot(2,2,4)
% plot(his1);