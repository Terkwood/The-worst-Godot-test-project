extends Node2D

var q_MeshTexture : MeshTexture = MeshTexture.new()
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
			q_MeshTexture = MeshTexture.new()
		
		if randi() % 2 == 1:
			q_MeshTexture.set_mesh(Mesh.new())
		if randi() % 2 == 1:
			q_MeshTexture.set_base_texture(Autoload.loadA("res://RES/Sprite.png"))
		if randi() % 2 == 1:
			q_MeshTexture.set_image_size(Vector2(Autoload.get_randf(), Autoload.get_randf()))
