extends Area2D

var collected = false
func _on_coin_body_entered(body):
	if not collected:
		hide()
		$powerUp5.play()
		get_tree().get_current_scence().getnode("HUD").inc_score()
		collected = true

