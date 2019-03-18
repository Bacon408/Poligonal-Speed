{
draw_set_font(countdown_font)
draw_set_color(c_white)
draw_text(x, y, "Get ready!\n" + string(showtime))
}

if mytime <= 0;
{
image_alpha = image_alpha - 0.03
}

if (image_alpha <= 0) instance_destroy();

if mytime <= 0;
{
draw_set_font(countdown_font)
draw_set_color(c_white)
draw_text(x, y, "RUUUUUNNNNN!!!!!")
}