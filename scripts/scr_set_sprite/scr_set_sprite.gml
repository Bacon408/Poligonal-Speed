if (jumping || falling)
	sprite_index = spr_player
	
if (ducking)
{
	sprite_index = spr_player_ducking;
}

if (!jumping && !falling && !ducking)
{
	sprite_index = spr_player;
}

if (jumping)
{
	sprite_index = spr_player_jumping;
}