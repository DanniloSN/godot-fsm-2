extends State

const GRAVITY = 80
const JUMP_FORCE = 60
const WALK_VELOCITY = 100

func _enter():
	character._move(character.movement.x / 8, character.movement.y / 8)

func _update(delta):
	character._apply_gravity(GRAVITY * delta)

func _handle_input(delta):
	if Input.is_action_pressed("ui_left"):
		character._move(-WALK_VELOCITY)
	elif Input.is_action_pressed("ui_right"):
		character._move(WALK_VELOCITY)
	else:
		character._move(0)

	if Input.is_action_just_pressed("ui_up"):
		character._jump(JUMP_FORCE)
