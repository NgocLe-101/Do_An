if (!global.gameOver) 
{
if (place_meeting(x,y+1,obj_floor))
	vspd = -jspd;
else
{
		if (vspd < termVelocity)
			vspd +=grav;
}
y+=vspd;
x+=hspd;
}