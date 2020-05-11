/// @description Insert description here
// You can write your code in this editor
depth = (((-y) - (sprite_height / 2)) + 1)
if (visible == 1)
{
    draw_sprite_ext(sprite_index, image_index, round(x), round(y), image_xscale, image_yscale, image_angle, image_blend, image_alpha)
    scr_draw_light()
}

