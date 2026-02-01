extends Node2D

@export var words: DialogueResource
@onready var mood = "neut"
@onready var bounce = false
@onready var maskselector =$"Mask Selection"
@export var talkheight = 10
var rest
var endingbegun = false
@export_file("*.tscn") var nextscene: String
@export var discovery: AudioStream

# Called when the node enters the scene tree for the first time.
# Load the dialogue file here
func _ready() -> void:
	#for n in $"Mask Selection/Panel/MarginContainer/GridContainer":
		#print("whee")
	DialogueManager.show_dialogue_balloon(words, "start")
	rest = $TempMan.position.y

func _process(delta: float) -> void:
	if DialogueManager.speak == 1:
		$TempMan.position.y = rest+talkheight
	else:
		$TempMan.position.y = rest
	if DialogueManager.endingchosen != "none" && endingbegun == false:
		endingbegun = true
		$Ending.visible = true
		$BackgroundMusic.stop()
		$BackgroundMusic.stream = discovery
		$BackgroundMusic.play()
		


func _on_button_button_down() -> void:
	$"Mask Selection".visible =  true
	$Button.visible = false


func _on_ending_button_down() -> void:
	get_tree().change_scene_to_file(nextscene)
