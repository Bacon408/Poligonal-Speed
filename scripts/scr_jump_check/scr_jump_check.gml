if (jumping)
{
	if (vspd < 0)
	{
		jumping = true;
	}
	else
	{
		jumping = false;
		falling = true;
	}
}