extends Node2D

var label : Label

func _ready():
	label = $VBoxContainer/RollingLabel
	
	label.text = $"/root/State".get_rolling_text()
	label.label_settings.font_size = $"/root/State".get_rolling_text_size()

func _reset_text():
	label.position.x = -label.size.x

func _process(delta):
	label.position.x += $"/root/State".get_rolling_speed() * delta / 0.016
	if label.position.x > get_viewport_rect().size.x:
		_reset_text()
