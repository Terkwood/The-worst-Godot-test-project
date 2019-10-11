extends Node2D

var q_NavigationMesh : NavigationMesh = NavigationMesh.new()
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
			q_NavigationMesh = NavigationMesh.new()
			
		
		if randi() % 2 == 1:
			q_NavigationMesh.set_sample_partition_type(Autoload.get_randi()) # SAMPLE_PARTITION
		if randi() % 2 == 1:
			q_NavigationMesh.set_parsed_geometry_type(Autoload.get_randi()) #PARSED_GEOMETRY
		if randi() % 2 == 1:
			q_NavigationMesh.set_collision_mask(Autoload.get_randi())
		if randi() % 2 == 1:
			q_NavigationMesh.set_cell_size(Autoload.get_randf())
		if randi() % 2 == 1:
			q_NavigationMesh.set_cell_height(Autoload.get_randf())
		if randi() % 2 == 1:
			q_NavigationMesh.set_agent_height(Autoload.get_randf())
		if randi() % 2 == 1:
			q_NavigationMesh.set_agent_radius(Autoload.get_randf())
		if randi() % 2 == 1:
			q_NavigationMesh.set_agent_max_climb(Autoload.get_randf())
		if randi() % 2 == 1:
			q_NavigationMesh.set_agent_max_slope(Autoload.get_randf())
		if randi() % 2 == 1:
			q_NavigationMesh.set_region_min_size(Autoload.get_randf())
		if randi() % 2 == 1:
			q_NavigationMesh.set_region_merge_size(Autoload.get_randf())
		if randi() % 2 == 1:
			q_NavigationMesh.set_edge_max_length(Autoload.get_randf())
		if randi() % 2 == 1:
			q_NavigationMesh.set_edge_max_error(Autoload.get_randf())
		if randi() % 2 == 1:
			q_NavigationMesh.set_verts_per_poly(Autoload.get_randf())
		if randi() % 2 == 1:
			q_NavigationMesh.set_detail_sample_distance(Autoload.get_randf())
		if randi() % 2 == 1:
			q_NavigationMesh.set_detail_sample_max_error(Autoload.get_randf())
		if randi() % 2 == 1:
			q_NavigationMesh.set_filter_low_hanging_obstacles(bool(randi()%2))
		if randi() % 2 == 1:
			q_NavigationMesh.set_filter_ledge_spans(bool(randi()%2))
		if randi() % 2 == 1:
			q_NavigationMesh.set_filter_walkable_low_height_spans(bool(randi()%2))
			
		if randi() % 2 == 1:
			q_NavigationMesh.add_polygon( PoolIntArray([125125.125,12512.1251,122.124]))
		if randi() % 2 == 1:
			q_NavigationMesh.clear_polygons()
#	BUG	if randi() % 2 == 1:
#			q_NavigationMesh.create_from_mesh(CubeMesh.new())
			
		if randi() % 2 == 1:
			qq += str(q_NavigationMesh.get_collision_mask_bit( Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_NavigationMesh.get_polygon( Autoload.get_randi() ))
		if randi() % 2 == 1:
			qq += str(q_NavigationMesh.get_polygon_count())
		if randi() % 2 == 1:
			qq += str(q_NavigationMesh.get_vertices())
			
