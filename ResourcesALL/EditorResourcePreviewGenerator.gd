extends Node2D

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

#func _ready():
#	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
#
#func _process(delta) -> void:
#	counter -= delta
#	var qq : String = ""
#	qq = qq
#
#	if counter <= 0:
#		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
#		var q_EditorResourcePreviewGenerator : EditorResourcePreviewGenerator = EditorResourcePreviewGenerator.new()
#
#		q_EditorResourcePreviewGenerator.can_generate_small_preview()
#		q_EditorResourcePreviewGenerator.generate( Resource.new(), Autoload.get_vector2())
#		q_EditorResourcePreviewGenerator.generate_from_path( Autoload.get_string(), Autoload.get_vector2())
#		q_EditorResourcePreviewGenerator.generate_small_preview_automatically()
#		q_EditorResourcePreviewGenerator.handles( Autoload.get_string() )
#
