extends Camera2D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
	if !is_visible():
		queue_free()

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq
	
	#  Vector2(randf() * 50,randf() * 50)
	#  randf() * 50
	#  bool(randi()%2)
	#  randi()%50
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		
		set_offset(Vector2(randf() * 50,randf() * 50))
		set_anchor_mode(randi()%2)
		set_rotating(bool(randi()%2))
		_set_current(bool(randi()%2))
		set_zoom(Vector2(randf() + 0.5,randf() + 0.5))
		if get_custom_viewport():
			set_custom_viewport(get_custom_viewport())
		set_process_mode(randi()%2)
		set("limit_left",randi()%50)
		set("limit_top",randi()%50)
		set("limit_right",randi()%50)
		set("limit_bottom",randi()%50)
		set_limit_smoothing_enabled(bool(randi()%2))
		set_h_drag_enabled(bool(randi()%2))
		set_v_drag_enabled(bool(randi()%2))
		set_enable_follow_smoothing(bool(randi()%2))
		set_follow_smoothing(randf() * 50)
		set_v_offset(randf() * 50)
		set_h_offset(randf() * 50)
		set("drag_margin_left",randi()%50)
		set("drag_margin_top",randi()%50)
		set("drag_margin_right",randi()%50)
		set("drag_margin_bottom",randi()%50)
		set_screen_drawing_enabled(bool(randi()%2))
		set_limit_drawing_enabled(bool(randi()%2))
		set_margin_drawing_enabled(bool(randi()%2))
		align()
		qq += str(get_camera_position())
		qq += str(get_camera_screen_center())
		make_current()
		clear_current()
		reset_smoothing()
		
		if Autoload.WRONG_BUGS:
			set_offset(Vector2(randf() * 1000 - 500, randf() * 1000 - 500))
			set_anchor_mode(randi() % 1000 - 500)
			set_rotating(bool(randi()%2))
			_set_current(bool(randi()%2))
			set_zoom(Vector2(randf() * 1000 - 500, randf() * 1000 - 500))
			if get_custom_viewport():
				set_custom_viewport(Viewport.new())
			set_process_mode(randi() % 1000 - 500)
			set("limit_left",randi() % 1000 - 500)
			set("limit_top",randi() % 1000 - 500)
			set("limit_right",randi() % 1000 - 500)
			set("limit_bottom",randi() % 1000 - 500)
			set_limit_smoothing_enabled(bool(randi()%2))
			set_h_drag_enabled(bool(randi()%2))
			set_v_drag_enabled(bool(randi()%2))
			set_enable_follow_smoothing(bool(randi()%2))
			set_follow_smoothing(randf() * 1000 - 500)
			set_v_offset(randf() * 1000 - 500)
			set_h_offset(randf() * 1000 - 500)
			set("drag_margin_left",randi() % 1000 - 500)
			set("drag_margin_top",randi() % 1000 - 500)
			set("drag_margin_right",randi() % 1000 - 500)
			set("drag_margin_bottom",randi() % 1000 - 500)
			set_screen_drawing_enabled(bool(randi()%2))
			set_limit_drawing_enabled(bool(randi()%2))
			set_margin_drawing_enabled(bool(randi()%2))
			align()
			qq += str(get_camera_position())
			qq += str(get_camera_screen_center())
			make_current()
			clear_current()
			reset_smoothing()