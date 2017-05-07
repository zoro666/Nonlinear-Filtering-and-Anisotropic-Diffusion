function [ asd1 ] = maska( I,i,j,d )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

asd1= I((i-d+1):(i+d-1),(j-d+1):(j+d-1));
end

