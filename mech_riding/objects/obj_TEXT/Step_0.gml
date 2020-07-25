input_get();
if (alarm[0] = -1)
{
	global.screenfreeze = 1;

	if (but_CONFIRM)
	{
	    if (scribble_autotype_get(element) < 1)
	    {
	        scribble_autotype_skip(element);
	    }
	    else if (!scribble_page_on_last(element))
	    {
	        scribble_page_set(element, 1 + scribble_page_get(element));
	        scribble_autotype_fade_in(element, SCRIBBLE_AUTOTYPE_PER_CHARACTER, spd, smth);
	    }
	    else
	    {
	        //Loop back round to the first page
	        instance_destroy();
	    }
	}
}