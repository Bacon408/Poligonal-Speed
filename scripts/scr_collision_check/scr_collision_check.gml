if (place_meeting(x, y + vspd, obj_ground))
{
	while (!place_meeting(x, y + sign(vspd), obj_ground))
	{
		y += sign(vspd);
	}
	
	vspd = 0;
}

y += vspd;