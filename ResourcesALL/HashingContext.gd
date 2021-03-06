extends Node2D

var q_HashingContext: HashingContext = HashingContext.new()

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_HashingContext, true)


func nodeFunction(q_HashingContext: HashingContext, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_HashingContext = HashingContext.new()
	if randi() % 2 == 1:
		AutoResourcesReference.nodeFunction(q_HashingContext)

	if randi() % 2 == 1:
		q_HashingContext.finish()
	if randi() % 2 == 1:
		q_HashingContext.start(Autoload.get_int())  #HashType
	if randi() % 2 == 1:
		q_HashingContext.update(Autoload.get_packedbytearray())
