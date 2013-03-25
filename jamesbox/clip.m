%% Funtion to clip the values of OI data at +/- X stds 
%% Pretty self-explanatory
%%  -jms summer 02


function im2 =  clip(im,num_stds)
ulim = mean2(im)+num_stds*std2(im);
llim = mean2(im)-num_stds*std2(im);
im2 = im;
im2(find(im>ulim)) = ulim;
im2(find(im<llim)) = llim;

