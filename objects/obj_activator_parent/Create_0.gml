// give the activator a target that it refers to. when all the target's activators state is set to "on",
// the target will perform its action (ex. door opens)

state = "off"
target = undefined;

save_key = save_data_key();

// set open_forever to true to log its state onto the save file and appear as the last time it was logged //
open_forever = true;


//init save check in alarm1
alarm[1] = 2;