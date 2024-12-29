extends Node3D

@onready var number_0: Node3D = $number_0
@onready var number_1: Node3D = $number_1
@onready var number_2: Node3D = $number_2
@onready var number_3: Node3D = $number_3
@onready var number_4: Node3D = $number_4
@onready var number_5: Node3D = $number_5
@onready var number_6: Node3D = $number_6
@onready var number_7: Node3D = $number_7
@onready var number_8: Node3D = $number_8
@onready var number_9: Node3D = $number_9

var numbers = [number_0, number_1, number_2, number_3, number_4, number_5, number_6, number_7, number_8, number_9]

const NODE_PATHS = {
	"number_0": "/root/Node3D/number_0",
	"number_1": "/root/Node3D/number_1",
	"number_2": "/root/Node3D/number_2",
	"number_3": "/root/Node3D/number_3",
	"number_4": "/root/Node3D/number_4",
	"number_5": "/root/Node3D/number_5",
	"number_6": "/root/Node3D/number_6",
	"number_7": "/root/Node3D/number_7",
	"number_8": "/root/Node3D/number_8",
	"number_9": "/root/Node3D/number_9"
}

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass	
	var instanced_scene = find_child("number_8", true)
	print( instanced_scene.get_path())
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	for action in NODE_PATHS.keys():
		if Input.is_action_just_pressed(action):
			var mesh_instance = get_node(NODE_PATHS[action])
			mesh_instance.visible = not mesh_instance.visible
	
