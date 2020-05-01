draw_set_font(1);
if(active == 1) {
	 i= 2;
	 repeat(5)  {
        draw_set_alpha(0.7 - i * 0.1);
        draw_text_transformed(wx - i * 4 + random(i * 8), wy - i * 4 + random(i * 8), string_hash_to_newline(string1), 2, 2, 0);
        i++;
    }
    draw_set_alpha(0.02);
    draw_text_transformed(wx - 2 + random(4), wy - 2 + random(4), string_hash_to_newline(string1), 2, 2, 0);
    draw_set_alpha(0.02);
    draw_text_transformed(wx - 2 + random(4), wy - 3 + random(4), string_hash_to_newline(string1), 2, 2, 0);
   
   
}

