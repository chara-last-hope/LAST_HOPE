// Sets the size and position of the game window
//
// The value will remain the same as it's current state if you set the number = 0

function WindowSizePos(xPos, yPos, sWidth, sHeight){
	
	posTest = CheckSet(xPos, yPos);
	sizeTest = CheckSet(sWidth, sHeight);
	
	if(posTest == sizeTest == 3)
	{
		show_debug_message("A value higher than Zero is required for at least one value");
		break;
	}
	
	funCheck = 0;
	
	switch (posTest)
	{
	case 3:
		show_debug_message("Use WindowSize() instead");
		funCheck = 1;
		break;
	case 2:
		yPos = window_get_y();
		break;
	case 1:
		xPos = window_get_x();
		break;
	case 0:
		break;
	}
	
	switch (sizeTest)
	{
	case 3:
		show_debug_message("Use WindowPos instead");
		funCheck = 2;
		break;
	case 2:
		sHeight = window_get_height();
		break;
	case 1:
		sWidth = window_get_width();
		break;
	case 0:
		break;
	}
	
	switch (funCheck)
	{
	case 0:
		window_set_rectangle(xPos, yPos, sWidth, sHeight);
		break;
	case 1:
		WindowSize(sWidth, sHeight);
		break;
	case 2:
		WindowPos(xPos, yPos);
	}
}

function WindowPos(xPos, yPos){
	
	window_set_position(xPos, yPos);
}

function WindowSize(sWidth, sHeight){
	
	window_set_size(sWidth, sHeight);
}

function CheckSet(val_1, val_2){
	
	ret = 0;
	
	if(val_1 == 0)
	{
		ret = 1;	
	}
	if(val_2 == 0)
	{
		ret = 2;	
	} 
	if(val_1 == 0 && val_2 == 0)
	{
		ret = 3;	
	}
	
	return ret;
}