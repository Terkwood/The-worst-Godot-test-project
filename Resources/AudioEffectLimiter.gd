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
		
		var q_AudioEffectLimiter : AudioEffectLimiter = AudioEffectLimiter.new()
		
		q_AudioEffectLimiter.set_ceiling_db(randf() * 50)
		q_AudioEffectLimiter.set_threshold_db(randf() * 50)
		q_AudioEffectLimiter.set_soft_clip_db(randf() * 50)
		q_AudioEffectLimiter.set_soft_clip_ratio(randf() * 50)
		
		if Autoload.WRONG_BUGS:
			q_AudioEffectLimiter.set_ceiling_db(randf() * 1000 - 500)
			q_AudioEffectLimiter.set_threshold_db(randf() * 1000 - 500)
			q_AudioEffectLimiter.set_soft_clip_db(randf() * 1000 - 500)
			q_AudioEffectLimiter.set_soft_clip_ratio(randf() * 1000 - 500)