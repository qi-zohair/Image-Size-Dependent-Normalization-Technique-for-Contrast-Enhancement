%% Title: Image Size Dependent Normalization Technique (ISDNT)

%% Created by Zohair Al-Ameen.
% Department of Computer Science, 
% College of Computer Science and Mathematics,
% University of Mosul, 
% Mosul, Nineveh, Iraq

%% Please report bugs and/or send comments to Zohair Al-Ameen.
% Email: qizohair@uomosul.edu.iq

%% When you use this code or any part of it, please cite the following article:  
% Zohair Al-Ameen, Ghazali Sulong, and Md Gapar Md Johar. 
% "Enhancing the Contrast of CT Medical Images by Employing a Novel Image Size Dependent Normalization Technique." 
% International Journal of Bio-Science and Bio-Technology, vol. 4, no. 3, (2012): pp. 63-68.
%% INPUT
% x --> is a given low-contrast image

%% OUTPUT
% res --> a contrast-enhanced image.


%% Starting implementation %%
clear all; close all; clc

%% Reading the image
x = im2double(imread('CT.jpg'));
figure; imshow(x); title('original') 

%% Equation 1 in the article
[m,n]=size(x);
xx=sum(x(:))/(m*n); 

%% Equation 2 in the article
xx0 = (x - min(x(:)))*exp(xx);
xx1 = max(x(:))- min(x(:)); 
res = xx0/xx1;

%% Display the results
figure; imshow(res); title('enhanced')
% imwrite(res,'CT_enh.jpg')