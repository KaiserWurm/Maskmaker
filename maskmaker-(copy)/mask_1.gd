extends TextureRect

@export var description: String

@onready var panel = %PanelContainer
@onready var label = %Label

func _ready():
	label.text = description
	panel.set_global_position(Vector2(1200, 100))

func _on_mouse_entered() -> void:
	panel.visible = true

func _on_mouse_exited() -> void:
	panel.visible = false
