extends Control

@export var words: DialogueResource
@onready var epi = self

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	DialogueManager.show_dialogue_balloon(words, "start")

func reset():
	get_tree().change_scene_to_file("res://menu.tscn")


func _on_button_button_down() -> void:
	get_tree().change_scene_to_file("res://menu.tscn")
