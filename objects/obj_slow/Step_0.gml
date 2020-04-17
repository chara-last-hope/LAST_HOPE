if(self.col==2 && !place_meeting(x,y,obj_slow)){
instance_destroy(self);
}
if(place_meeting(x,y,obj_slow)){
self.col=2
}

