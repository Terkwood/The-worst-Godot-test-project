extends ConfirmationDialog

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x


func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq
	
#		Vector2(randf() * 50,randf() * 50))
#		randf() * 50)
#		bool(randi()%2))
#		randi()%50)
#		Color(randf(),randf(),randf(),randf()))
#		load("res://Sprite" + str(randi()%4 + 1) + ".png"))
#		var qq : String = ""
#		qq += str(
#		qq = qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		qq += str(get_cancel())
		
		if Autoload.WRONG_BUGS:
			qq += str(get_cancel())
			
			
			
			
			
			
			
			
			emit_signal("about_to_show")
			emit_signal("popup_hide")
			
			emit_signal("confirmed")
			emit_signal("custom_action","af")
			
			show()
