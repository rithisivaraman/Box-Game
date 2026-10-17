class_name Level extends Node

@warning_ignore("unused_signal")
signal yarn_updated(int)

@onready var collectables: TileMapLayer = $collectables

var yarn: int = 0

func _ready() -> void:
	call_deferred("collect_signals")

func collect_signals() -> void:
	for child in collectables.get_children():
		if child is Yarnball:
			child.is_collected.connect(yarn_collected)

func yarn_collected() -> void:
	yarn += 1
