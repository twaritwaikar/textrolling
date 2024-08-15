extends Node

var rolling_text = ""
var rolling_text_size = 10.0
var rolling_speed = 1.0

func present(text: String, font_size: int, speed: float = 1.0):
	rolling_text = text
	rolling_text_size = font_size
	rolling_speed = speed
	get_tree().change_scene_to_file("presenter.tscn")

func get_rolling_text() -> String:
	return rolling_text

func get_rolling_text_size() -> int:
	return rolling_text_size

func get_rolling_speed() -> float:
	return rolling_speed
