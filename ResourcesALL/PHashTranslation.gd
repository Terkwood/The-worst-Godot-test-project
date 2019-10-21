extends Node2D

var q_PHashTranslation : PHashTranslation = PHashTranslation.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_PHashTranslation,true)

func nodeFunction(q_PHashTranslation : PHashTranslation, can_reset : bool = false) -> void:
	
	if can_reset:
		if randi() % 2 == 1:
			q_PHashTranslation = PHashTranslation.new()
	if randi() % 2 == 1:
		AutoResourcesResource.nodeFunction(q_PHashTranslation)

		if randi() % 2 == 1:
			q_PHashTranslation.generate( Translation.new())
