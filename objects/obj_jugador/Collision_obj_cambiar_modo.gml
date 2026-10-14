if(alarm[0]<0){
    alarm[0]=180;
    if (modo_juego == "Plataforma") {
        modo_juego = "Top_Down";
        other.sprite_index = spr_plataforma;
        ysp = 0;
    } else {
        modo_juego = "Plataforma";
        other.sprite_index = spr_top_down;
    }
    other.image_alpha=0.2;
}
