extends Node2D

var q_AudioStreamOGGVorbis : AudioStreamOGGVorbis = AudioStreamOGGVorbis.new()
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
			q_AudioStreamOGGVorbis = AudioStreamOGGVorbis.new()
			
		
		if randi() % 2 == 1:
			q_AudioStreamOGGVorbis.set_data(PoolByteArray([1241,214,124,214,214,12,412,421,215,2151251,251,25125,215,125,21,512,512,512,5215]))
		if randi() % 2 == 1:
			q_AudioStreamOGGVorbis.set_loop(bool(randi()%2))
		if randi() % 2 == 1:
			q_AudioStreamOGGVorbis.set_loop_offset(Autoload.get_randf())
