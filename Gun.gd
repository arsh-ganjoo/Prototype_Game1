extends Area2D

signal pickup

var inside_area = false


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed('interact'):
		if inside_area == true:
			emit_signal("pickup")


func _on_Gun_body_entered(body):
	inside_area = true 

func _on_Gun_body_exited(body):
	inside_area = false # Replace with function body.
