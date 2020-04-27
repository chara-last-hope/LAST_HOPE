event_inherited();

	_ready=true;

    audio_play_sound(snd_blanket,1,0)

    for (i = 0; i < 12; i += 1)
        instance_create_depth(((x + 20) + (i * 6)), ((y + 20) + random(25)),0, obj_dustball_pilebreak)


