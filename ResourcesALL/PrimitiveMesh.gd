extends Node2D

var q_PrimitiveMesh : PrimitiveMesh = CapsuleMesh.new()

onready var counter : float = Autoload.get_rand_time()

func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_PrimitiveMesh,true)

func nodeFunction(q_PrimitiveMesh : PrimitiveMesh, can_reset : bool = false) -> void:
	
#	if can_reset:
#		if randi() % 2 == 1:
#			q_PrimitiveMesh = PrimitiveMesh.new()
	if randi() % 2 == 1:
		AutoResourcesResource.nodeFunction(q_PrimitiveMesh)

	if randi() % 2 == 1:
		q_PrimitiveMesh.set_material(Autoload.loadA("SpatialMaterial.tres"))
	if randi() % 2 == 1:
		q_PrimitiveMesh.set_custom_aabb(Autoload.get_aabb())
	if randi() % 2 == 1:
		q_PrimitiveMesh.set_flip_faces(Autoload.get_bool())

	if Autoload.SLOW_FUNCTIONS:
		if randi() % 2 == 1:
			q_PrimitiveMesh.get_mesh_arrays()
