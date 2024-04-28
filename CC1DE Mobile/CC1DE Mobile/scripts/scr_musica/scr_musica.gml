function scr_musica(codigo)
{
    audio_stop_all();
    var paquete = scr_dame_dato(control.data_musica, codigo, "lista");
    var _loop = true;
    if (ds_list_size(paquete) > 1)
    {
        _loop = false;
        control.musica_iniciada = true;
    }
    control.musica_codigo = codigo;
    control.musica_index = paquete[|0];
    audio_play_sound(paquete[|0], 10, _loop, 1);
}
function scr_musica_repetir(codigo)
{
    if (!audio_is_playing(control.musica_index) and control.musica_iniciada)
    {
        var paquete = scr_dame_dato(control.data_musica, control.musica_codigo, "lista");
        control.musica_iniciada = false;
        audio_play_sound(paquete[|1], 10, true, 1);
    }
}