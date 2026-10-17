class_name YarnUI extends Panel

@onready var label: Label = $yarnamt

func update(yarn: int) -> void:
	label.text = str(yarn)
