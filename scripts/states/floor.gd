extends State

const JUMP_FORCE = 700
const WALK_VELOCITY = 300

func _update(delta):
	if !character.is_on_floor():
		_setState("Air")

func _handle_input(delta):
	if Input.is_action_pressed("ui_left"):
		character._move(-WALK_VELOCITY)
	elif Input.is_action_pressed("ui_right"):
		character._move(WALK_VELOCITY)
	else:
		character._move(0)

	if Input.is_action_just_pressed("ui_up"):
		character._jump(JUMP_FORCE)

	if Input.is_action_just_pressed("attack"):
		pass
