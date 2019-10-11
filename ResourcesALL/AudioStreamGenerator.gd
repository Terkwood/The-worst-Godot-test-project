extends Node2D

var q_AudioStreamGenerator : AudioStreamGenerator = AudioStreamGenerator.new()
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
			q_AudioStreamGenerator = AudioStreamGenerator.new()
			
	
		if randi() % 2 == 1:
			q_AudioStreamGenerator.set_mix_rate(Autoload.get_randf())
		if randi() % 2 == 1:
			q_AudioStreamGenerator.set_buffer_length(Autoload.get_randf())
