extends Node

var character
signal setState

func _constructor(character: KinematicBody2D):
	self.character = character
	print("Entity _constructor")

func _enter():
	print("Entity _enter")

func _setState(state: String):
	character._setState(state)
	print("Entity _setState: " + state)

func _exit():
	print("Entity _exit")

func _destroy():
	character = null
	print("Entity _destroy")
