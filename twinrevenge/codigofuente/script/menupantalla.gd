extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$AnimationPlayer.play("menutitulo")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



func _on_gallery_pressed() -> void:
	$sonidobotonstream.play()
	await get_tree().create_timer(0.8).timeout #espera 0.8 segundos
	get_tree().change_scene_to_file("res://escenas/galeria.tscn")
	


func _on_creditsbutton_pressed() -> void:
	$sonidobotonstream.play()
	await get_tree().create_timer(0.8).timeout #espera 0.8 segundos
	get_tree().change_scene_to_file("res://escenas/credittt.tscn")


func _on_presss_pressed() -> void:
	$sonidobotonstream.play()
	await get_tree().create_timer(0.8).timeout #espera 0.8 segundos
	get_tree().change_scene_to_file("res://escenas/nododialogo.tscn")
	
