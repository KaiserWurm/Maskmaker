extends Node2D

@export var words: DialogueResource
@export var mood = "neut"

# Called when the node enters the scene tree for the first time.
# Load the dialogue file here
func _ready() -> void:
	DialogueManager.show_dialogue_balloon(words, "start")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
