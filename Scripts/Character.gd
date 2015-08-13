extends KinematicBody2D

const MOTION_SPEED=160

func _fixed_process(delta):

	var motion = Vector2()
	
	if (Input.is_action_pressed("ui_up")):
		motion+=Vector2(0,-1)
	if (Input.is_action_pressed("ui_down")):
		motion+=Vector2(0,1)
	if (Input.is_action_pressed("ui_left")):
		motion+=Vector2(-1,0)
	if (Input.is_action_pressed("ui_right")):
		motion+=Vector2(1,0)
	
	motion = motion.normalized() * MOTION_SPEED * delta
	motion = move(motion)
	
	var slide_attempts = 4
	while(is_colliding() and slide_attempts>0):
		motion = get_collision_normal().slide(motion)
		motion=move(motion)
		slide_attempts-=1
	

func _ready():
	set_fixed_process(true)
	pass


