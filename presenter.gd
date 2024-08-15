extends Node2D

var label : Label

func _ready():
	label = $RollingLabel
	
	label.text = $"/root/State".get_rolling_text()
	label.label_settings.font_size = get_viewport_rect().size.y - 20
	#label.label_settings.font_size = $"/root/State".get_rolling_text_size()
	_reset_text()

func _reset_text():
	label.position.x = get_window().size.x

func _process(delta):
	label.position.x -= $"/root/State".get_rolling_speed() * delta / 0.016
	if label.position.x + label.size.x < 0:
		_reset_text()
