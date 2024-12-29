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

const ALPHA_COLOR = Color(1, 1, 1, 0.5)  # Blanc avec alpha 50%
const OPAQUE_COLOR = Color(1, 1, 1, 1)   # Blanc opaque

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	for action in NODE_PATHS.keys():
		if Input.is_action_just_pressed(action):
			_update_visibility(action)

func _update_visibility(active_action: String) -> void:
	for action in NODE_PATHS.keys():
		var mesh_instance = get_node(NODE_PATHS[action])
		# Le nœud correspondant à l'action devient visible, les autres deviennent invisibles
		if action == active_action:
			mesh_instance.visible = true
		else:
			mesh_instance.visible = false
