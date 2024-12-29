extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("key_Q"):
		rotation.y += 1.0 * delta
	if Input.is_action_pressed("key_D"):
		rotation.y -= 1.0 * delta
	if Input.is_action_pressed("key_Z"):
		rotation.y -= 1.0 * delta
		rotation.x -= 0.3 * delta
	if Input.is_action_pressed("key_S"):
		rotation.y += 1.0 * delta
		rotation.x += 0.3 * delta
