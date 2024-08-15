extends Node2D

func _on_button_pressed():
	$"/root/State".present(
		$TextEdit.text,
		$FontSizeEdit.value,
		$ScrollSpeedEdit.value)
