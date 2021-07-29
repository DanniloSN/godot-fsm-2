extends Area2D

func _on_ocean_body_entered(body):
	if body.is_in_group("char"):
		body._setState("Water")

func _on_ocean_body_exited(body):
	if body.is_in_group("char"):
		body._setState("Air")
