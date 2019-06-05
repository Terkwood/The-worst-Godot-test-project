extends GraphEdit

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x


func _process(delta) -> void:
	counter -= delta
	
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
		var qq : String = ""
		
		set_right_disconnects(bool(randi()%2))
		set_scroll_ofs(Vector2(randf() * 50,randf() * 50))
		set_snap(randi()%50 + 10)
		set_use_snap(bool(randi()%2))
		set_zoom(randf() * 50)
		
		add_valid_connection_type(10,12)
		add_valid_left_disconnect_type(0)
		qq += str(add_valid_right_disconnect_type(0))
		clear_connections()
		qq += str(connect_node("self",10,"fles",12))
		qq += str(disconnect_node("self",10,"fles",12))
		qq += str(get_connection_list())
		qq += str(get_zoom_hbox())
		qq += str(is_node_connected("self",10,"fles",12))
		qq += str(is_valid_connection_type(10,12))
		remove_valid_connection_type(10,12)
		remove_valid_left_disconnect_type(0)
		remove_valid_right_disconnect_type(0)
		set_connection_activity("self",10,"fles",12,randf() * 50)
		set_selected(self)
		
		qq = qq
		
		
		
		
		
		
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x