extends Camera

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq=qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x

		if randi() % 2 == 1:
			set_keep_aspect_mode(Autoload.get_int())
		if randi() % 2 == 1:
			set_cull_mask(Autoload.get_int())
		if randi() % 2 == 1:
			set_environment(Environment.new())
		if randi() % 2 == 1:
			set_h_offset(Autoload.get_float())
		if randi() % 2 == 1:
			set_v_offset(Autoload.get_float())
		if randi() % 2 == 1:
			set_doppler_tracking(Autoload.get_int())
		if randi() % 2 == 1:
			set_projection(Autoload.get_int())
		if randi() % 2 == 1:
			set_current(Autoload.get_bool())
		if randi() % 2 == 1:
			set_fov(Autoload.get_float())
		if randi() % 2 == 1:
			set_size(Autoload.get_float())
		if randi() % 2 == 1:
			set_frustum_offset(Autoload.get_vector2())
		if randi() % 2 == 1:
			set_znear(Autoload.get_float())
		if randi() % 2 == 1:
			set_zfar(Autoload.get_float())
			
		if randi() % 2 == 1:
			clear_current(Autoload.get_bool())
		if randi() % 2 == 1:
			qq += str(get_camera_rid())
		if randi() % 2 == 1:
			qq += str(get_camera_transform())
		if randi() % 2 == 1:
			qq += str(get_cull_mask_bit(Autoload.get_int()))
		if randi() % 2 == 1:
			qq += str(get_frustum())
		if randi() % 2 == 1:
			qq += str(is_position_behind(Autoload.get_vector3()))
		if randi() % 2 == 1:
			make_current()
		if randi() % 2 == 1:
			qq += str(project_local_ray_normal(Autoload.get_vector2()))
		if randi() % 2 == 1:
			qq += str(project_position(Autoload.get_vector2()))
		if randi() % 2 == 1:
			qq += str(project_ray_normal(Autoload.get_vector2()))
		if randi() % 2 == 1:
			qq += str(project_ray_origin(Autoload.get_vector2()))
		if randi() % 2 == 1:
			set_cull_mask_bit(Autoload.get_int(),Autoload.get_bool())
		if randi() % 2 == 1:
			set_frustum(Autoload.get_float(),Autoload.get_vector2(), Autoload.get_float(), Autoload.get_float())
		if randi() % 2 == 1:
			set_orthogonal(Autoload.get_float(),Autoload.get_float(),Autoload.get_float())
		if randi() % 2 == 1:
			set_perspective(Autoload.get_float(),Autoload.get_float(),Autoload.get_float())
		if randi() % 2 == 1:
			qq += str(unproject_position(Autoload.get_vector3()))
