if (jumping || falling)
	sprite_index = spr_player
	
if (ducking)
{
	sprite_index = spr_player_slide;
	
if (place_meeting(x, y + vspd, obj_ground))
{
	while (!place_meeting(x, y + sign(vspd), obj_ground))
	{
		y += sign(vspd);
	}
	
	vspd = 0;
}

y += vspd;
}

if (!jumping && !falling && !ducking)
{
	sprite_index = spr_player;
}

if (jumping)
{
	sprite_index = spr_player_jumping;
}

if (shield)
{
	sprite_index = spr_shield;
}