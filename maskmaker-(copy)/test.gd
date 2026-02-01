extends Node2D

@export var words: DialogueResource
@onready var mood = "neut"
@onready var bounce = false
@export var talkheight = 10
var rest

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#for n in $"Mask Selection/Panel/MarginContainer/GridContainer":
		#print("whee")
	DialogueManager.show_dialogue_balloon(words, "start")
	rest = $TempMan.position.y

func plothappens():
	$BackgroundMusic.stop()
	$BackgroundMusic.stream = "res://GGJ Maskmaker Game Jam/Music/Discovery.wav"
	$BackgroundMusic.play()

func _process(delta: float) -> void:
	if DialogueManager.speak == 1:
		$TempMan.position.y = rest+talkheight
	else:
		$TempMan.position.y = rest



func _on_button_button_down() -> void:
	$"Mask Selection".visible =  true
	$Button.visible = false
