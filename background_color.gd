extends Control

onready var panColor = get_node("Panel")
onready var colorPickerVar = get_node("ColorPickerButton").get_pick_color()

func _ready():
	var button = self
	button.text = "Click me"
	button.connect("pressed", self, "_button_pressed")

func _button_pressed():
	panColor.modulate = colorPickerVar
