extends Label

var coins = 0

func _ready():
	text = str(coins)

func _on_coin1_coinCollected():
	coins += 1
	_ready()
	if coins == 51:
		$Timer.start()

func _on_Timer_timeout():
	get_tree().change_scene("res://scenes/YouWin.tscn")
