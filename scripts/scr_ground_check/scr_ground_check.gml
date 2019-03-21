if (duckKey)
{
	ducking = true;
	jumping = false;
	falling = true;
	shield = false;
}

if (shieldKey)
{
	ducking = false;
	jumping = true;
	falling = true;
	shield = true;
}
if (place_meeting(x, y + 1, obj_ground))
{
	vspd = 0;
	jumping = false;
	falling = false;
	
	if (!shieldKey)
	shield = false;
	
	if (!duckKey)
	ducking = false;
	
	if ((jumpKey || jumpKeyAlt) && !duckKey)
	{
		jumping = true;
		vspd = -hspd;
	}
}
else 
{
	if (ducking)
	{
		vspd += grav * 4;
	}
	else
	{
		if (vspd < termVelocity)
			vspd += grav;
			
		if (sign(vspd) == 1)
			falling = true;
	}
}