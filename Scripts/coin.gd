extends Area2D

@onready var game_manager: Node = %GameManager
@onready var animation_player: AnimationPlayer = $AnimationPlayer

## Called when the node enters the scene tree for the first time.
#func _ready() -> void:   # call when it entire sence tree
	#print("I am a coin") # in console window works for all coins
#
## Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	#pass

# signals to use for see in signals tab
func _on_body_entered(body: Node2D) -> void:
	game_manager.add_points()
	print("+1 coin")
	animation_player.play("pickUpAnimation")
	
