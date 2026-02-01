extends Button

@export_file("*.tscn") var nextscene: String

func _on_pressed() -> void:
	get_tree().change_scene_to_file(nextscene)
