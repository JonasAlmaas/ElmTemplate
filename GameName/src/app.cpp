#include "app.hpp"
#include "game_layer.hpp"

game_name_app::game_name_app(const elm::application_specification &spec, elm::application_command_line_args args)
	: elm::application(spec, args)
{
	push_layer(new game_layer());
}
