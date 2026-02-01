extends Node2D

@export var words: DialogueResource
@export var mood = "neut"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	DialogueManager.show_dialogue_balloon(words, "start")


func _on_button_button_down() -> void:
	$"Mask Selection".visible =  true
	$Button.visible = false
