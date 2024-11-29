extends Node
@onready var points_label = %PointsLabel
@onready var finish = %Finish

var points = 0

func _ready():
	process_mode = Node.PROCESS_MODE_PAUSABLE

func add_point():
	points += 1
	print(points)
	points_label.text = "Points : " + str(points)

func toggle_pause():
	var pause_menu = $"PauseMenu"
	pause_menu.show()
	get_tree().paused = true  # Pause the game

func toggle_resume():
	get_tree().paused = false

# Reset the game
func reset_game():
	get_tree().reload_current_scene()
	
func _input(event):
	if event.is_action_pressed("pause"):
		toggle_pause()
