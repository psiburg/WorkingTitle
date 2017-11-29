/// @description Insert description here
// You can write your code in this editor
draw_self()
//draw_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,true)
if (hook_in_progress)
{
	draw_line_width(x,y,hook_obj.x,hook_obj.y,3)	
}

//gameover
if (game_state=-1)
{
    draw_text(x,y-50, "You died.");
}
