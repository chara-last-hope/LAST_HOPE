/// @description Insert description here
// You can write your code in this editor
var light_collide, light_catcher, catcher_block_height, catcher_block_width, light_check, pwall_1, pwall_2, pwall_3, pwall_4, twall_1, twall_2, twall_3, twall_4, i, catcher_array_check, xx, yy, light_x, light_y, lightdetect_x, ray_check, lightdetect_y;
gpu_set_blendmode_ext(9, 2)
if (light_flash == 1)
    gpu_set_blendmode(1)
if ((instance_exists(obj_roomdark_parent) && (activated == 1)) || (light_bypass == 1))
{	
    if instance_exists(obj_lightcatcher_parent)
    {
        light_collide = 0
        for (current_catcher = 0; current_catcher < instance_number(obj_lightcatcher_parent); current_catcher++)
        {
            light_catcher = instance_find(obj_lightcatcher_parent, current_catcher)
            if (light_catcher.visible == 1)
            {
                catcher_block_height = (sprite_get_height(light_catcher.sprite_index) / 4)
                catcher_block_width = sprite_get_width(light_catcher.sprite_index)
                light_check = 0
                pwall_1 = (light_catcher.x - (catcher_block_width / 2))
                pwall_2 = (light_catcher.y + catcher_block_height)
                pwall_3 = (light_catcher.x + (catcher_block_width / 2))
                pwall_4 = (light_catcher.y + (sprite_get_height(light_catcher.sprite_index) / 2))
                if (lightdir == 0)
                {
                    twall_1 = x
                    twall_2 = (y - (sprite_height / 2))
                    twall_3 = (x + sprite_width)
                    twall_4 = (y + (sprite_height / 2))
                }
                else if (lightdir == 1)
                {
                    twall_1 = (x - (sprite_width / 2))
                    twall_2 = y
                    twall_3 = (x + (sprite_width / 2))
                    twall_4 = (y + sprite_height)
                }
                else if (lightdir == 2)
                {
                    twall_1 = (x - sprite_width)
                    twall_2 = (y - (sprite_height / 2))
                    twall_3 = x
                    twall_4 = (y + (sprite_height / 2))
                }
                else if (lightdir == 3)
                {
                    twall_1 = (x - (sprite_width / 2))
                    twall_2 = (y - sprite_height)
                    twall_3 = (x + (sprite_width / 2))
                    twall_4 = y
                }
                light_check = rectangle_in_rectangle(twall_1, twall_2, twall_3, twall_4, pwall_1, pwall_2, pwall_3, pwall_4)
                if light_check
                {
                    if (!is_array(lightcatcher_array))
                    {
                        for (i = 0; i < 10; i++)
                            lightcatcher_array[i] = 0
                        lightcatcher_array[0] = light_catcher
                    }
                    else
                    {
                        catcher_array_check = 0
                        i = 0
                        while (i < 10)
                        {
                            if (lightcatcher_array[i] == light_catcher)
                            {
                                catcher_array_check = 1
                                break
                            }
                            else
                            {
                                i++
                                continue
                            }
                        }
                        if (catcher_array_check == 0)
                        {
                            i = 0
                            while (i < 10)
                            {
                                if (lightcatcher_array[i] == 0)
                                {
                                    lightcatcher_array[i] = light_catcher
                                    break
                                }
                                else
                                {
                                    i++
                                    continue
                                }
                            }
                        }
                    }
                    if (lightdir == 0)
                    {
                        xx = 0
                        yy = 0
                        light_x = floor(x)
                        light_y = floor((y - (sprite_height / 2)))
                        for (yy = 0; yy <= sprite_height; yy++)
                        {
                            if (light_collide == 0)
                                lightdetect_x[yy] = sprite_width
                            ray_check = collision_line(light_x, (light_y + yy), (light_x + sprite_width), (light_y + yy), light_catcher, 1, 1)
                            if (ray_check && ((light_y + yy) > (light_catcher.y + catcher_block_height)))
                            {
                                xx = 0
                                while (xx <= sprite_width)
                                {
                                    if position_meeting((light_x + xx), (light_y + yy), light_catcher)
                                    {
                                        if (xx < lightdetect_x[yy])
                                        {
                                            lightdetect_x[yy] = xx
                                            break
                                        }
                                        else
                                        {
                                            xx++
                                            continue
                                        }
                                    }
                                    else
                                    {
                                        xx++
                                        continue
                                    }
                                }
                            }
                        }
                    }
                    else if (lightdir == 1)
                    {
                        xx = 0
                        yy = 0
                        light_x = floor((x - (sprite_width / 2)))
                        light_y = floor(y)
                        for (xx = 0; xx <= sprite_width; xx++)
                        {
                            if (light_collide == 0)
                                lightdetect_y[xx] = sprite_height
                            ray_check = collision_line((light_x + xx), light_y, (light_x + xx), (light_y + sprite_height), light_catcher, 1, 1)
                            if ray_check
                            {
                                yy = 0
                                while (yy <= sprite_height)
                                {
                                    if (position_meeting((light_x + xx), (light_y + yy), light_catcher) && ((light_y + yy) > (light_catcher.y + catcher_block_height)))
                                    {
                                        if (yy < lightdetect_y[xx])
                                        {
                                            lightdetect_y[xx] = yy
                                            break
                                        }
                                        else
                                        {
                                            yy++
                                            continue
                                        }
                                    }
                                    else
                                    {
                                        yy++
                                        continue
                                    }
                                }
                            }
                        }
                    }
                    else if (lightdir == 2)
                    {
                        xx = 0
                        yy = 0
                        light_x = floor(x)
                        light_y = floor((y - (sprite_height / 2)))
                        for (yy = 0; yy <= sprite_height; yy++)
                        {
                            if (light_collide == 0)
                                lightdetect_x[yy] = sprite_width
                            ray_check = collision_line(light_x, (light_y + yy), (light_x - sprite_width), (light_y + yy), light_catcher, 1, 1)
                            if (ray_check && ((light_y + yy) > (light_catcher.y + catcher_block_height)))
                            {
                                xx = 0
                                while (xx <= sprite_width)
                                {
                                    if position_meeting((light_x - xx), (light_y + yy), light_catcher)
                                    {
                                        if (xx < lightdetect_x[yy])
                                        {
                                            lightdetect_x[yy] = xx
                                            break
                                        }
                                        else
                                        {
                                            xx++
                                            continue
                                        }
                                    }
                                    else
                                    {
                                        xx++
                                        continue
                                    }
                                }
                            }
                        }
                    }
                    else if (lightdir == 3)
                    {
                        xx = 0
                        yy = 0
                        light_x = floor((x - (sprite_width / 2)))
                        light_y = floor(y)
                        for (xx = 0; xx <= sprite_width; xx++)
                        {
                            if (light_collide == 0)
                                lightdetect_y[xx] = sprite_height
                            ray_check = collision_line((light_x + xx), light_y, (light_x + xx), (light_y - sprite_height), light_catcher, 1, 1)
                            if ray_check
                            {
                                yy = 0
                                while (yy <= sprite_height)
                                {
                                    if position_meeting((light_x + xx), (light_y - yy), light_catcher)
                                    {
                                        if (yy < lightdetect_y[xx])
                                        {
                                            lightdetect_y[xx] = yy
                                            break
                                        }
                                        else
                                        {
                                            yy++
                                            continue
                                        }
                                    }
                                    else
                                    {
                                        yy++
                                        continue
                                    }
                                }
                            }
                        }
                    }
                    with (light_catcher)
                    {
                        light_activate = 1
                        light_caster = other.object_index
                        light_diffuse = other.diffuse
                        light_direction = other.lightdir
                        light_luminosity = other.luminosity
                        light_falloff = other.falloff
                    }
                    light_collide = 1
                }
                else if is_array(lightcatcher_array)
                {
                    catcher_array_check = 0
                    i = 0
                    while (i < 10)
                    {
                        if (lightcatcher_array[i] == light_catcher)
                        {
                            catcher_array_check = 1
                            break
                        }
                        else
                        {
                            i++
                            continue
                        }
                    }
                    if catcher_array_check
                    {
                        lightcatcher_array[i] = 0
                        with (light_catcher)
                        {
                            light_activate = 0
                            light_caster = 0
                        }
                    }
                }
            }
        }
        if (light_collide == 0)
        {
            draw_self()
            lightcatcher_array = 0
        }
        else if (lightdir == 0)
        {
            yy = 0
            repeat sprite_height
            {
                draw_sprite_part_ext(sprite_index, image_index, 0, yy, lightdetect_x[yy], 1, light_x, (light_y + yy), image_xscale, image_yscale, image_blend, image_alpha)
                yy++
            }
        }
        else if (lightdir == 1)
        {
            xx = 0
            repeat sprite_width
            {
                draw_sprite_part_ext(sprite_index, image_index, xx, 0, 1, lightdetect_y[xx], (light_x + xx), light_y, image_xscale, image_yscale, image_blend, image_alpha)
                xx++
            }
        }
        else if (lightdir == 2)
        {
            yy = 0
            repeat sprite_height
            {
                draw_sprite_part_ext(sprite_index, image_index, ((sprite_width - lightdetect_x[yy]) - 1), yy, lightdetect_x[yy], 1, (light_x - lightdetect_x[yy]), (light_y + yy), image_xscale, image_yscale, image_blend, image_alpha)
                yy++
            }
        }
        else if (lightdir == 3)
        {
            xx = 0
            repeat sprite_width
            {
                draw_sprite_part_ext(sprite_index, image_index, xx, ((sprite_height - lightdetect_y[xx]) - 1), 1, lightdetect_y[xx], (light_x + xx), (light_y - lightdetect_y[xx]), image_xscale, image_yscale, image_blend, image_alpha)
                xx++
            }
        }
    }
    else
        draw_self()
}
gpu_set_blendmode(0)



