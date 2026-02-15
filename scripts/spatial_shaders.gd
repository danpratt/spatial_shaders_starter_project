extends Node3D

@onready var sphere = $SphereExample

func _process(_delta):
	if Input.is_action_just_pressed("quit"):
		get_tree().quit()
		
	if Input.is_action_just_pressed("random_color"):
		var sphere_material = sphere.get_active_material(0)
		var random_color = getRandomColor()
		sphere_material.set_shader_parameter("sphere_color", random_color)
	
	
func getRandomColor():
	return Vector3(randf(), randf(), randf())
	
