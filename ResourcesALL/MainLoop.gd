extends Node2D
# TODO CHECK IF BUG
#var q_MainLoop : MainLoop = MainLoop.new()

onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()


#		nodeFunction(q_MainLoop,true)


func nodeFunction(q_MainLoop: MainLoop, can_reset: bool = false) -> void:
#	if can_reset:
#		if randi() % 2 == 1:
#			q_MainLoop.free()
#			q_MainLoop = MainLoop.new()
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_MainLoop)

	### START TEMP
	var temp_InputEventAction: InputEventAction = InputEventAction.new()
	AutoResourcesInputEventAction.nodeFunction(temp_InputEventAction)

	### END TEMP

#			q_MainLoop._drop_files( Autoload.get_packedstringarray(), Autoload.get_int())
#			q_MainLoop._finalize()
#			q_MainLoop._idle( Autoload.get_float())
#			q_MainLoop._initialize()
#			q_MainLoop._input_event( temp_InputEventAction)
#			q_MainLoop._input_text( Autoload.get_string())
#			q_MainLoop._iteration( Autoload.get_float())

	if randi() % 2 == 1:
		q_MainLoop.finish()
	if randi() % 2 == 1:
		q_MainLoop.idle(Autoload.get_float())
	if randi() % 2 == 1:
		q_MainLoop.init()

	if randi() % 2 == 1:
		q_MainLoop.input_event(temp_InputEventAction)
	if randi() % 2 == 1:
		q_MainLoop.input_text(Autoload.get_string())

	if randi() % 2 == 1:
		q_MainLoop.iteration(Autoload.get_float())

#func _exit_tree():
#	q_MainLoop.free()
