///save_data_key
function save_data_key() {

	//creates a unique key for this specific instance depending on its type and starting position

	return room_get_name(room)+object_get_name(object_index)+string(x)+string(y);


}
