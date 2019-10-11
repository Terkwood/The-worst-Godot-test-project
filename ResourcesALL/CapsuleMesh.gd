extends Node2D

var q_CapsuleMesh : CapsuleMesh = CapsuleMesh.new()
var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		if randi() % 2 == 1:
			q_CapsuleMesh = CapsuleMesh.new()
			
		
		if randi() % 2 == 1:
			q_CapsuleMesh.set_radius(Autoload.get_randf())
		if randi() % 2 == 1:
			q_CapsuleMesh.set_mid_height(Autoload.get_randf())
		if randi() % 2 == 1:
			q_CapsuleMesh.set_radial_segments(randi()%10 - 5)
		if randi() % 2 == 1:
			q_CapsuleMesh.set_rings(randi()% 10 -5)
