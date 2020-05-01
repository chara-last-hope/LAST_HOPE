/// @description Insert description here
// You can write your code in this editor
index += 0.2
for (i = 0; i < length; i += 1)
{
    for (j = 0; j < height; j += 1)
        draw_sprite(sprite_index, ((((index + (x / 320)) + (i * 0.125)) + (j * 0.125)) + (y / 320)), (x + (20 * i)), (y + (20 * j)))
}