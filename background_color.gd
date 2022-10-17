extends Control

#onready var panColor = get_node("Panel")
onready var colorPickerVar
onready var panColor
export(NodePath) var panelPath
export(NodePath) var colorPath
func _ready():
	panColor = get_node(panelPath)
	colorPickerVar = get_node(colorPath)
	var button = self
	button.text = "Click me"
	button.connect("pressed", self, "_button_pressed")

func _button_pressed():
	colorPickerVar = colorPickerVar.get_color()
	panColor.modulate = colorPickerVar
