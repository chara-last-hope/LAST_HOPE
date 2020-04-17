//move 10% towards player
move_towards_point(obj_introview.x,obj_introview.y,2)

///Paralax
__background_set( e__BG.X, 0, x*0.95 )
__background_set( e__BG.Y, 0, y*0.95 )

__background_set( e__BG.X, 1, x*.9 )
__background_set( e__BG.Y, 1, y*.9 )

__background_set( e__BG.X, 2, x*.75 )
__background_set( e__BG.Y, 2, y*.75 )
