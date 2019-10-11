extends Node2D

var q_Array : Array = []
var q_temp : Node = load("res://RES/Node.tscn").instance()

var counter : float
var C_COUNTER : Vector2 = Vector2(0.5,1.0)

func _ready():
	counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
	add_child(q_temp)

func _process(delta) -> void:
	counter -= delta
	var qq : String = ""
	qq = qq
	
	if counter <= 0:
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x
		if randi() % 2 == 1:
			q_temp.queue_free()
			q_temp = load("res://RES/Node.tscn").instance()
			add_child(q_temp)

		if randi() % 2 == 1:
			if randi() % 2 == 1:
				q_Array = Array(PoolColorArray([Color()]))
			if randi() % 2 == 1:
				q_Array = Array(PoolVector3Array([Color()]))
			if randi() % 2 == 1:
				q_Array = Array(PoolVector2Array([Color()]))
			if randi() % 2 == 1:
				q_Array = Array(PoolStringArray([Color()]))
			if randi() % 2 == 1:
				q_Array = Array(PoolRealArray([Color()]))
			if randi() % 2 == 1:
				q_Array = Array(PoolIntArray([Color()]))
			if randi() % 2 == 1:
				q_Array = Array(PoolByteArray([Color()]))

		if randi() % 2 == 1:
			q_Array.append("Rosół")
		if randi() % 2 == 1:
			q_Array.back()

		if randi() % 2 == 1:
			qq += str(q_Array.bsearch( "Nie", bool(randi()%2)))
		if randi() % 2 == 1:
			qq += str(q_Array.bsearch_custom( "Nie", q_temp, "Jesion", bool(randi()%2)))

		if randi() % 2 == 1:
			q_Array.clear()
		if randi() % 2 == 1:
			qq += str(q_Array.count( "Nie" ))
		if randi() % 2 == 1:
			qq += str(q_Array.duplicate( bool(randi()%2)))
		if randi() % 2 == 1:
			qq += str(q_Array.empty())
		if randi() % 2 == 1:
			q_Array.erase( "Nie" )

		if randi() % 2 == 1:
			qq += str(q_Array.find( "Jesiotr", Autoload.get_randi()))
		if randi() % 2 == 1:
			qq += str(q_Array.find_last( "Nie" ))

		if randi() % 2 == 1:
			q_Array.front()

		if randi() % 2 == 1:
			qq += str(q_Array.has( "Nie" ))
		if randi() % 2 == 1:
			qq += str(q_Array.hash())

		if randi() % 2 == 1:
			q_Array.insert( Autoload.get_randi(), "Nie") 
		if randi() % 2 == 1:
			q_Array.invert()
		if randi() % 2 == 1:
			q_Array.max()
		if randi() % 2 == 1:
			q_Array.min()

		if randi() % 2 == 1:
			q_Array.pop_back()
		if randi() % 2 == 1:
			q_Array.pop_front()

		if randi() % 2 == 1:
			q_Array.push_back( "Nie" )
		if randi() % 2 == 1:
			q_Array.push_front( "Nie" )

		if randi() % 2 == 1:
			q_Array.remove( Autoload.get_randi())
		if randi() % 2 == 1:
			q_Array.resize( Autoload.get_randi())
		if randi() % 2 == 1:
			qq += str(q_Array.rfind( "Nie", Autoload.get_randi()))
		if randi() % 2 == 1:
			q_Array.shuffle()
		if randi() % 2 == 1:
			qq += str(q_Array.size())

		if randi() % 2 == 1:
			q_Array.sort()
		if randi() % 2 == 1:
			q_Array.sort_custom( q_temp, "Ram" )

func delete_node():
	print("AA")
	q_temp.queue_free()
