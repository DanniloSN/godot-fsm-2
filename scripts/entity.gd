extends KinematicBody2D

var life = 100
var movement = Vector2()

func _physics_process(delta):
	move_and_slide(movement, Vector2.UP, true)

func _move(velocityX = movement.x, velocityY = movement.y):
	if velocityX == null: velocityX = movement.x
	if velocityY == null: velocityY = movement.y
	movement.x = velocityX
	movement.y = velocityY

func _jump(force: float):
	movement.y = -force

func _apply_gravity(force: float):
	movement.y += force

func _apply_damage(damage):
	if(life-damage <= 0): return _die()
	life -= damage

func _die():
	queue_free()
