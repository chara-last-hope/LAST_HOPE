//if(x > __view_get( e__VW.XView, 0 ) - 100 && x < __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) + 100 && y > __view_get( e__VW.YView, 0 ) - 100 && y < __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) + 100)
    instance_create_depth(x + random(2), y, 1, rain_drop1);
	
	alarm[0]= random(600);
// comment here