extends CanvasLayer

@onready var game_manager = $"../GameManager"

func _ready():
	process_mode = Node.PROCESS_MODE_PAUSABLE
	hide()
	
func show_button():
	show()

func _on_resume_pressed():
	hide()
	game_manager.toggle_resume()

func _on_reset_pressed():
	game_manager.toggle_resume()
	game_manager.reset_game()

func _on_main_menu_pressed():
	game_manager.toggle_resume()
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
