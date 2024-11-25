extends Area2D

var score = 0
var limit = 33

func add_point():
	score += 1

func _on_body_entered(body):
	if (body.name == "CharacterBody2D") and score == limit:
		get_tree().change_scene_to_file("res://scenes/game_finish.tscn")
