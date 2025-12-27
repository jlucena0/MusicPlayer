//Unhighlight the button when no longer hovering over it
if (sprite_index == spr_pauseHover) {
    sprite_index = spr_pauseButton;
} else if (sprite_index == spr_playHover) {
    sprite_index = spr_playButton;
}

//If the mouse is hovering highlight the button
if (position_meeting(mouse_x, mouse_y, id)) {
    //High light pause button
   if (sprite_index == spr_pauseButton) {
     sprite_index = spr_pauseHover; 
    } 
    //Highlight play button
   if (sprite_index == spr_playButton) { 
        sprite_index = spr_playHover;
    } 
} 
//When clicking the button it switchs to show pause icon or play icon
if (mouse_check_button_pressed(mb_left)) {
    //If clicking pause icon show play icon
    if (sprite_index == spr_pauseButton or sprite_index == spr_pauseHover) {
    sprite_index = spr_playButton;
     //If clicking play icon show pause icon    
} else if (sprite_index == spr_playButton or sprite_index == spr_playHover) {
    sprite_index = spr_pauseButton;
}
}