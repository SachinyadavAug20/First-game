extends Area2D

@onready var timer: Timer = $Timer  # path of times

func _on_body_entered(body: Node2D) -> void:
	print("You died")
	body.get_node("CollisionShape2D").queue_free() # body is the collided body
	Engine.time_scale=0.5; # made slow-mo for it 
	timer.start()


func _on_timer_timeout() -> void:
	# restart the game
	Engine.time_scale=1;
	get_tree().reload_current_scene()
