extends LightOccluder2D

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(self, true)


func nodeFunction(q_LightOccluder2D: LightOccluder2D, can_reset: bool = false) -> void:
	if randi() % 2 == 1:
		AutoObjects.A_Object(q_LightOccluder2D)
		AutoObjects.A_Node(q_LightOccluder2D)
		AutoObjects.A_CanvasItem(q_LightOccluder2D)
		AutoObjects.A_Node2D(q_LightOccluder2D)

	### START TEMP
	var temp_OccluderPolygon2D: OccluderPolygon2D = OccluderPolygon2D.new()
#?#	AutoResourcesOccluderPolygon2D.nodeFunction(temp_OccluderPolygon2D)

	### END TEMP

	if randi() % 2 == 1:
		q_LightOccluder2D.set_occluder_polygon(temp_OccluderPolygon2D)
	if randi() % 2 == 1:
		q_LightOccluder2D.set_occluder_light_mask(Autoload.get_int())
