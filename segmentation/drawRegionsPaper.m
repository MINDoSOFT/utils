function I = drawRegionsPaper(I, r, totalColors)
% function I = drawRegionsPaper(I,r, totalColors)
% 
% overlay regions using a colormap good for totalColors onto the image. r
% must be a int matrix and I can be anything.
% 
% Returns a double I

% AUTORIGHTS
% ---------------------------------------------------------
% Copyright (c) 2014, Saurabh Gupta
% 
% This file is part of the Utils code and is available 
% under the terms of the Simplified BSD License provided in 
% LICENSE. Please retain this notice and LICENSE if you use 
% this file (or any portion of it) in your project.
% ---------------------------------------------------------

  if(~exist('totalColors','var'))
    totalColors = 40;
  end
	I = im2double(I);
  %cmap = double(hsv(10));
	cmap = getGoodColorMap(totalColors);
	cmap = [0 0 0; cmap];
	r = double(ind2rgb(r,cmap));
	I = min(1,repmat(rgb2gray(I)/2, [1 1 3])+ r/2); 
end
