extends Node2D

var game_running: bool = false
var game_over : bool = false
var score: int = 0
var scroll: int = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	newgame()

func newgame():
	game_running = false
	game_over = false
	score = 0
	scroll = 0
	$Player.reset()
	

	

func _input(event):
	if game_over == false:
		if event is InputEventMouseButton:
			if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
				if game_running == false:
					start_game()
			else:
				if $Player.flying == true:
					$Player.fly()

func start_game():
	game_running = true
	$Player.flying = true
	$Player.fly()
