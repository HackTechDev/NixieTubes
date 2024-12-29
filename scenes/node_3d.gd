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

var numbers = []

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	numbers = [number_0, number_1, number_2, number_3, number_4, number_5, number_6, number_7, number_8, number_9]

	for i in 10:
		print(i)
