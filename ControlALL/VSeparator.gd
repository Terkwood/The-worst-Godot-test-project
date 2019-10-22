extends VSeparator

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self)

func nodeFunction(q_VSeparator : VSeparator) -> void:

	if randi() % 2 == 1:
		AutoObjects.A_Object(q_VSeparator)
		AutoObjects.A_Node(q_VSeparator)
		AutoObjects.A_CanvasItem(q_VSeparator)
		AutoObjects.A_Control(q_VSeparator)
		AutoObjects.A_Separator(q_VSeparator)
