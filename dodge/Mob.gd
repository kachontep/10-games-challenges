class_name Mob
extends RigidBody2D

export var min_speed := 150  # Minimum speed range
export var max_speed := 250  # Maximum speed range

onready var sprite: AnimatedSprite = $AnimatedSprite

func _ready():
	var mob_types = sprite.frames.get_animation_names()
	sprite.animation = mob_types[randi() % mob_types.size()]


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
