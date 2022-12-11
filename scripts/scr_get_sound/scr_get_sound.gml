function scr_get_sound(a){
	if (a==0)
		return woman_dead_sound;
	else if (a==1)
		return oldman_dead_sound;
	else
		return man_dead_sound;
}