function load_JSON_from_file(filename)
{
	var buffer = buffer_load(filename);
	var str = buffer_read(buffer,buffer_string);

	var json = json_decode(str);
	return json;
}

function save_string_to_JSON(str,filename)
{
	var encoded_str = json_encode(str)
	var buffer = buffer_create(string_byte_length(encoded_str) +1, buffer_fixed, 1);
	buffer_write(buffer, buffer_string, encoded_str)
	buffer_save(buffer, filename)
	buffer_delete(buffer)
}