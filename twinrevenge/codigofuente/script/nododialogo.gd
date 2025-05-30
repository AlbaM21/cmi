extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready(): 
	Dialogic.start("timeline1")
	Dialogic.connect("timeline_ended",Callable(self,"_on_dialogic_timeline_ended") ) 





func _on_dialogic_timeline_ended():
	get_tree().change_scene_to_file("res://escenas/mainpinpon.tscn")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
