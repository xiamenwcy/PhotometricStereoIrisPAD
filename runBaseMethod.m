% Adam Czajka, Zhaoyuan Fang, Kevin W. Bowyer, "Iris Presentation Attack 
% Detection Based on Photometric Stereo Features," IEEE Winter Conference 
% on Applications of Computer Vision (WACV), Waikoloa Village, Hawaii, 2019
% (supplementary materials)
% -------------------------------------------------------------------------
% Version 1.0, November 16, 2018

clear all

% angular positions of the illuminators (LG4000)
slant = [15.00, 15.00];
tilt = [108.886, 81.52];
THR = 0.08;

% test live / authentic samples:
[~, v] = PhotoStereo('./sample_data/nd1S04261sam1left',slant, tilt);

if (v > THR) 
    disp('nd1S04261sam1left.tiff: textured contact lens detected!')
else
    disp('nd1S04261sam1left.tiff: no textured contact lens found')
end

% test samples with textured contact lens:
[~, v] = PhotoStereo('./sample_data/nd1S04261b1s1p1left',slant, tilt);
if (v > THR) 
    disp('nd1S04261b1s1p1left.tiff: textured contact lens detected!')
else
    disp('nd1S04261b1s1p1left.tiff: no textured contact lens found')
end
