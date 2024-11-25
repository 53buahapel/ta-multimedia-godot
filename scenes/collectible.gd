extends Area2D
@onready var game_manager = %GameManager
@onready var finish = %Finish



func _on_body_entered(body):
	if (body.name == "CharacterBody2D"):
		queue_free()
		game_manager.add_point()
		finish.add_point()
