function scrMusic(Music)
{
	if (Control.MusicActual != Music)
	{
		audio_stop_sound(Control.MusicActual);
		Control.MusicActual = Music;
		audio_sound_gain(Music , Control.VolumeMusic , 0);
		audio_play_sound(Music , 5 , true);
	}
}

function scrSound(Sound)
{
	audio_sound_gain(Sound , Control.VolumeSound, 0);
	audio_play_sound(Sound , 0 , false);
}