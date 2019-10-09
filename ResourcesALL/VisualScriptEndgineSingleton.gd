extends Node2D

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
		
		var q_VisualScriptEngineSingleton : VisualScriptEngineSingleton = VisualScriptEngineSingleton.new()
		if !Autoload.RANDI:
		
			q_VisualScriptEngineSingleton.set_singleton("asf")
			
			if Autoload.WRONG_BUGS:
				q_VisualScriptEngineSingleton.set_singleton("ase")

		else: #RANDI
			if randi() % 2 == 1:
				q_VisualScriptEngineSingleton.set_singleton("ase")
