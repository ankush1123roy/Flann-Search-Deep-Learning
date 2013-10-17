 

function [newpts, T] = normalise2dpts(pts)
    % Find the indices of the points that are not at infinity
  finiteind = find(abs(pts(3,:)) > eps);
    % For the finite points ensure homogeneous coords have scale of 1
    pts(1,finiteind) = pts(1,finiteind)./pts(3,finiteind);
pts(2,finiteind) = pts(2,finiteind)./pts(3,finiteind);
pts(3,finiteind) = 1;
c = mean(pts(1:2,finiteind)')';            % Centroid of finite points
	 newp(1,finiteind) = pts(1,finiteind)-c(1); % Shift origin to centroid.
	 newp(2,finiteind) = pts(2,finiteind)-c(2);
	 dist = sqrt(newp(1,finiteind).^2 + newp(2,finiteind).^2);
	 meandist = mean(dist(:));  % Ensure dist is a column vector for Octave 3.0.1
	 scale = sqrt(2)/meandist;
	 T = [scale 0 -scale*c(1) ; 0 scale -scale*c(2); 0 0 1];
	 newpts = T*pts;
end
