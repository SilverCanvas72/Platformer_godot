extends CharacterBody2D

const fall: int = 1000
const max_fall: int = 600
const jump_height: int = -500
var flying: bool = false
var falling: bool = false
const start_point = Vector2(100, 400)




func _ready():
	reset()

func reset():
	falling = false
	flying = false
	position = start_point

	
	
	
func _physics_process(delta):
	if flying == true or falling == true:
		velocity.y += fall * delta
		
	if velocity.y > max_fall:
		velocity.y = max_fall
		
		
func fly():
	velocity.y = jump_height
