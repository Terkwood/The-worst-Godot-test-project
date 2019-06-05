extends ItemList

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
		set_select_mode(randi()%2)
		set_allow_reselect(bool(randi()%2))
		set_allow_rmb_select(bool(randi()%2))
		set_max_text_lines(randi()%50 + 10)
		set_auto_height(bool(randi()%2))
		set_max_columns(randi()%50)
		set_same_column_width(bool(randi()%2))
		set_fixed_column_width(randi()%50)
		set_icon_mode(randi()%2)
		set_icon_scale(randf() * 50)
		set_fixed_icon_size(Vector2(randf() * 50,randf() * 50))
		add_icon_item(load("res://Sprite" + str(randi()%4 + 1) + ".png"),bool(randi()%2))
		add_item(str(randi()%50),load("res://Sprite" + str(randi()%4 + 1) + ".png"),bool(randi()%2))
		ensure_current_is_visible()
		qq += str(get_item_at_position(Vector2(randf() * 50,randf() * 50),bool(randi()%2)))
		qq += str(get_item_count())
		qq += str(get_item_custom_bg_color(0))
		qq += str(get_item_custom_fg_color(0))
		qq += str(get_item_icon(0))
		qq += str(get_item_icon_modulate(0))
		qq += str(get_item_icon_region(0))
		qq += str(get_item_metadata(0))
		qq += str(get_item_text(0))
		qq += str(get_item_tooltip(0))
		qq += str(get_selected_items())
		qq += str(get_v_scroll())
		qq += str(is_anything_selected())
		qq += str(is_item_disabled(0))
		qq += str(is_item_icon_transposed(0))
		qq += str(is_item_selectable(0))
		qq += str(is_item_tooltip_enabled(0))
		qq += str(is_selected(0))
		move_item(0,1)
		remove_item(0)
		select(0,bool(randi()%2))
		set_item_custom_bg_color(0,Color(randf(),randf(),randf(),randf()))
		set_item_custom_fg_color(0,Color(randf(),randf(),randf(),randf()))
		set_item_disabled(0,bool(randi()%2))
		set_item_icon(0,load("res://Sprite" + str(randi()%4 + 1) + ".png"))
		set_item_icon_modulate(0,Color(randf(),randf(),randf(),randf()))
		set_item_icon_region(0,Rect2(Vector2(randf() * 50,randf() * 50),Vector2(randf() * 50,randf() * 50)))
		set_item_icon_transposed(0,bool(randi()%2))
		set_item_metadata(0,Popup.new())
		set_item_selectable(0,bool(randi()%2))
		set_item_text(0,str(bool(randi()%2)))
		set_item_tooltip(0,str(bool(randi()%2)))
		set_item_tooltip_enabled(0,bool(randi()%2))
		sort_items_by_text()
		unselect(0)
		unselect_all()
		clear()
		
		qq = qq
		
		
		counter = randf() * (C_COUNTER.y - C_COUNTER.x) + C_COUNTER.x