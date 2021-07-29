extends State

const GRAVITY = 1500
const AIR_MOVEMENT_VELOCITY = 300

func _update(delta):
	character._apply_gravity(GRAVITY * delta)
	if character.is_on_ceiling(): character._move(null, 0)
	if character.is_on_floor(): _setState("Floor")

func _handle_input(delta):
	if Input.is_action_pressed("ui_left"):
		character._move(-AIR_MOVEMENT_VELOCITY)
	elif Input.is_action_pressed("ui_right"):
		character._move(AIR_MOVEMENT_VELOCITY)
	else:
		character._move(0)
