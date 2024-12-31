extends Node3D

const NODE_PATHS = {
	"number_0": "/root/Node3D/lamp3/number_0",
	"number_1": "/root/Node3D/lamp3/number_1",
	"number_2": "/root/Node3D/lamp3/number_2",
	"number_3": "/root/Node3D/lamp3/number_3",
	"number_4": "/root/Node3D/lamp3/number_4",
	"number_5": "/root/Node3D/lamp3/number_5",
	"number_6": "/root/Node3D/lamp3/number_6",
	"number_7": "/root/Node3D/lamp3/number_7",
	"number_8": "/root/Node3D/lamp3/number_8",
	"number_9": "/root/Node3D/lamp3/number_9"
}

const ALPHA_COLOR = Color(0, 1, 0, 0.5)  # Blanc avec alpha 50%
const OPAQUE_COLOR = Color(1, 0, 0, 1)   # Blanc opaque

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
		var parent_node = get_node(NODE_PATHS[action])
		
		# Rechercher un MeshInstance3D enfant
		var mesh_instance = parent_node.get_child(0) if parent_node.get_child_count() > 0 else null
		if mesh_instance is MeshInstance3D:
			# Récupération ou création du matériel de base
			var material = mesh_instance.material_override
			if material == null:
				material = StandardMaterial3D.new()
				mesh_instance.material_override = material
			
			# Appliquer l'alpha 50 % ou l'opacité complète sur le  MeshInstance3D enfant
			if action == active_action:
				mesh_instance.visible = true
				material.albedo_color = OPAQUE_COLOR
				print ("opaque")
			else:
				# Rend invisible 
				mesh_instance.visible = false
				
				# mais j'aimerai mieux lui appliquer une couleur alpha
				#material.albedo_color = ALPHA_COLOR
				
				print("alpha")
