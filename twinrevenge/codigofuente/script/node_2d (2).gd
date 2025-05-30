extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
 
@export var imagenes: Array[Texture2D] = []
var index = 0

func cambiar() -> void:
	$Sprite2D.texture = imagenes[index]
	
func _ready() -> void:
	cambiar()
