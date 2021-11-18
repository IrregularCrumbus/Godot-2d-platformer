extends "res://src/actors/actor.gd"

func _ready():
	velocity.x = -speed.x

func _physics_process(delta):
	velocity.y += gravity * delta
	if is_on_wall():
		velocity.x *= -1.0
	velocity.y = move_and_slide(velocity, FLOOR_NORMAL).y
