extends TextureRect

@export var words: DialogueResource
@export var description: String
@export var selected = false
@export var maskid: String

@onready var panel = %PanelContainer
@onready var label = %Label

func _ready():
	label.text = description
	panel.set_global_position(Vector2(1200, 100))

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_accept") && selected == true:
		DialogueManager.endingchosen = maskid
		DialogueManager.show_dialogue_balloon(words, maskid)

func _on_mouse_entered() -> void:
	panel.visible = true
	selected = true
	print("works")

func _on_mouse_exited() -> void:
	panel.visible = false
	selected = false
