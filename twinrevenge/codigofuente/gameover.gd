extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$AnimationPlayer.play("gameover_animation")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_retry_pressed() -> void:
	$sonidobotongameover.play()
	await get_tree().create_timer(0.8).timeout #espera 0.8 segundos
	get_tree().change_scene_to_file("res://escenas/mainpinpon.tscn")


func _on_menu_pressed() -> void:
	$sonidobotongameover.play()
	await get_tree().create_timer(0.8).timeout #espera 0.8 segundos
	get_tree().change_scene_to_file("res://escenas/menupantalla.tscn")
	
