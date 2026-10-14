if(modo_juego=="Plataforma"){
    ysp+=0.1;
     xsp=0;
     
     if keyboard_check(ord("A")){
         xsp=-1;
     }
     if keyboard_check(ord("D")){
         xsp=+1;
     }
     if place_meeting(x,y+1,layer_tilemap_get_id("Casillas_Paredes")){
         ysp=0;
         if keyboard_check(ord("W")){
             ysp=-3;
         }
     }
     if(xsp!=0){
         image_xscale=xsp;
     }
     move_and_collide(xsp,ysp,layer_tilemap_get_id("Casillas_Paredes"));
    
}else{
    var _mov_h=keyboard_check(ord("D"))-keyboard_check(ord("A"));
    var _mov_v=keyboard_check(ord("S"))-keyboard_check(ord("W"));
    move_and_collide(_mov_h*v_mov,_mov_v*v_mov,layer_tilemap_get_id("Casillas_Paredes"));
    if(_mov_h!=0){
        image_xscale=_mov_h;
    }
}

if place_meeting(x,y,layer_tilemap_get_id("Casillas_Damage")){
        vida-=1;
}
if(vida<=0){
    room_restart();
}
