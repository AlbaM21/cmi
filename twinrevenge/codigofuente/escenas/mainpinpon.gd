extends Sprite2D

var score := [0, 0]# 0:Player, 0: CPU
const PADDLE_SPEED : int = 500


func _on_balltimer_timeout() -> void:
	$ball.new_ball()

func _on_scoreleft_body_entered(body: Node2D) -> void:
	score[0] += 1
	$hud/cpuscore.text = str(score[0])
	$balltimer.start()
	if score[0] >= 5:
		await get_tree().create_timer(1.0).timeout
		get_tree().change_scene_to_file("res://gameover.tscn")



func _on_scoreright_body_entered(body: Node2D) -> void:
	score[0] += 1
	$hud/playerscore.text = str(score[0])
	$balltimer.start()
