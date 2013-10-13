	function new_img = transformImage(img, H, o_x, o_y, description, pad)
	font_size = 24;
	if ( pad > 0 )
	    [rows cols] = size(img);
	    img = [ repmat(0,rows,pad) img repmat(0,rows,pad) ];
	    img = [ repmat(0,pad,cols+(2*pad)); img; repmat(0,pad,cols+(2*pad)) ];
	end
	[rows cols] = size(img);
	x = (1:cols)';
	y = (1:rows)';
	[XI,YI] = meshgrid(x,y);
	XI_size = length(XI(:));
	x_prime = H * [XI(:) YI(:) ones(XI_size,1)]';
	X = x_prime(1,:) ./ x_prime(3,:);
	Y = x_prime(2,:) ./ x_prime(3,:);
	if (o_x > 0 || o_y > 0)
	    xi = (-o_x : cols - o_x - 1)';
	    yi = (-o_y : rows - o_y - 1)';
	    [XII, YII] = meshgrid(xi,yi);
	else
	    XII = XI;
	    YII = YI;
	end
	new_img_vector = griddata(X,Y,double(img(:)),XII(:),YII(:));
	new_img = reshape(new_img_vector, rows, cols);
	figure;
	imagesc(XII(:),YII(:),new_img);colormap gray
	axis on;
	name = sprintf( description );
	title( name, 'FontSize', font_size );