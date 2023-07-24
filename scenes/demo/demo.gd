# -- 01 @tool
# -- 02 class_name
# -- 03 extends
extends Node2D

# -- 04 # docstring
#
# -- 05 signals
# -- 06 enums
# -- 07 constants
# -- 08 exported variables
@export var shader_panels_named : Array[ShaderPanelNamed]



# -- 09 public variables
# -- 10 private variables
# -- 11 onready variables
@onready var shader_panels_option_button = %ShaderPanelsOptionButton
@onready var shader_panels = %ShaderPanels

#
# -- 12 optional built-in virtual _init method
# -- 13 optional built-in virtual _enter_tree() method
# -- 14 built-in virtual _ready method
func _ready():
	_init_shader_panels_option_button()
	

# -- 15 remaining built-in virtual methods
# -- 16 public methods
# -- 17 private methods
func _init_shader_panels_option_button():
	for i in shader_panels_named.size():
		shader_panels_option_button.add_icon_item(shader_panels_named[i].icon, shader_panels_named[i].name, i)
		

func _activate_shader_panel(index: int):
	get_tree().call_group("shader_panels", "destroy")
	var shader_panel = shader_panels_named[index].shader_panel.instantiate()
	shader_panels.add_child(shader_panel)
	shader_panel.global_position = Vector2(350, 40)
	
	
# -- 18 signal listeners
func _on_shader_panels_option_button_item_selected(index):
	_activate_shader_panel(index)

# -- 19 innerclasses




