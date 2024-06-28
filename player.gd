extends CharacterBody2D

const fall: int = 10
const jump_height: int = -500
var started : bool = false



func _physics_process(delta):
	
	velocity.y += fall
	
	if Input.is_action_just_pressed("Jump"):
		if velocity.y > -5:
			velocity.y += -400
			
		else :
			velocity.y = -400
	move_and_slide()
		
	
	
	





	#if started == true:
			#velocity.y += fall
		
	
	#if Input.is_action_just_pressed("Jump"):
		#velocity.y += jump_height
		#started == true
	#move_and_slide()

