extends CharacterBody2D
@onready var speed = 100
@onready var animated_sprite = $AnimatedSprite2D
	
func _physics_process(delta: float) -> void:
	
	
	### Movement ### 
	velocity = Vector2.ZERO
	
	if Input.is_action_pressed("move_down"):
		velocity.y = speed
		
	elif Input.is_action_pressed("move_up"):
		velocity.y = - speed
		
	elif Input.is_action_pressed("move_left"):
		animated_sprite.flip_h = true
		velocity.x = -speed
		
	elif Input.is_action_pressed("move_right"):
		animated_sprite.flip_h = false 
		velocity.x = speed
	else:
		animated_sprite.play("Idle_down")
		
	
	move_and_slide()
	
