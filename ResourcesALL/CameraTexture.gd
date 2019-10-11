extends Node2D

var q_CameraTexture : CameraTexture = CameraTexture.new()
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
			q_CameraTexture = CameraTexture.new()
			
		
		
		if randi() % 2 == 1:
			q_CameraTexture.set_camera_feed_id(Autoload.get_randi())
		if randi() % 2 == 1:
			q_CameraTexture.set_which_feed(Autoload.get_randi())
		if randi() % 2 == 1:
			q_CameraTexture.set_camera_active(bool(randi()%2))
