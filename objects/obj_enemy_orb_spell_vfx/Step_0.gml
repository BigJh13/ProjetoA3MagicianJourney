if global.levelup == true || global.weapon_upgrade == true{
	exit;
}

image_xscale = scale;
image_yscale = scale;

scale-=.1;

if scale <= 0{
	instance_destroy();
}