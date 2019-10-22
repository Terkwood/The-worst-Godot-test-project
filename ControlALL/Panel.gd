extends Panel

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self)

func nodeFunction(q_Panel : Panel) -> void:
	
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_Panel)
		AutoObjects.A_Node(q_Panel)
		AutoObjects.A_CanvasItem(q_Panel)
		AutoObjects.A_Control(q_Panel)
