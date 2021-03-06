extends Node2D

var q_Directory: Directory = Directory.new()

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_Directory, true)


func nodeFunction(q_Directory: Directory, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_Directory = Directory.new()
#	if randi() % 2 == 1: # BUG?
#		AutoObjects.A_Object(q_Directory)

	if randi() % 2 == 1:
		q_Directory.change_dir(Autoload.get_string())
	if randi() % 2 == 1:
		q_Directory.copy(Autoload.get_string(), Autoload.get_string())
	if randi() % 2 == 1:
		q_Directory.current_is_dir()
	if randi() % 2 == 1:
		q_Directory.dir_exists("res://TEMP/" + Autoload.get_string())
	if randi() % 2 == 1:
		q_Directory.file_exists("res://TEMP/" + Autoload.get_string())

	if randi() % 2 == 1:
		q_Directory.get_current_dir()
	if Autoload.SLOW_FUNCTIONS:
		if randi() % 2 == 1:
			q_Directory.get_current_drive()
	if randi() % 2 == 1:
		q_Directory.get_drive(Autoload.get_int())
	if randi() % 2 == 1:
		q_Directory.get_drive_count()
	if randi() % 2 == 1:
		q_Directory.get_next()
	if randi() % 2 == 1:
		q_Directory.get_space_left()

	if randi() % 2 == 1:
		q_Directory.list_dir_begin(Autoload.get_bool(), Autoload.get_bool())
	if randi() % 2 == 1:
		q_Directory.list_dir_end()

	if Autoload.SLOW_FUNCTIONS:
		if randi() % 2 == 1:
			q_Directory.make_dir("res://TEMP/" + Autoload.get_string())
		if randi() % 2 == 1:
			q_Directory.make_dir_recursive("res://TEMP/" + Autoload.get_string())

		if randi() % 2 == 1:
			q_Directory.open("res://TEMP/" + Autoload.get_string())
		if randi() % 2 == 1:
			q_Directory.remove("res://TEMP/" + Autoload.get_string())
		if randi() % 2 == 1:
			q_Directory.rename(Autoload.get_string(), Autoload.get_string())
