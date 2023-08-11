# -- 01 @tool
# -- 02 class_name
class_name ColoredDitheringShaderPanel

# -- 03 extends
extends ShaderPanel

# -- 04 # docstring
#
# -- 05 signals
# -- 06 enums
# -- 07 constants
# -- 08 exported variables
# -- 09 public variables
# -- 10 private variables
# -- 11 onready variables
@onready var color_rect: ColorRect = %ShaderColorRect

@onready var threshold_slider = %Threshold/HSlider
@onready var threshold_value_label = %Threshold/ValueLabel

@onready var levels_slider = %Levels/HSlider
@onready var levels_value_label = %Levels/ValueLabel

@onready var colors_slider = %Colors/HSlider
@onready var colors_value_label = %Colors/ValueLabel

@onready var pixelate_slider = %Pixelate/HSlider
@onready var pixelate_value_label = %Pixelate/ValueLabel

#
# -- 12 optional built-in virtual _init method
# -- 13 optional built-in virtual _enter_tree() method
# -- 14 built-in virtual _ready method
func _ready():
	levels_slider.value_changed.connect(_on_levels_slider_value_changed)
	levels_slider.value = color_rect.material.get_shader_parameter("levels")
	
	threshold_slider.value_changed.connect(_on_threshold_slider_value_changed)
	threshold_slider.value = color_rect.material.get_shader_parameter("threshold")
	
	colors_slider.value_changed.connect(_on_colors_slider_value_changed)
	colors_slider.value = color_rect.material.get_shader_parameter("colors")
	
	pixelate_slider.value_changed.connect(_on_pixelate_slider_value_changed)
	pixelate_slider.value = color_rect.material.get_shader_parameter("pixelate")
	
	
# -- 15 remaining built-in virtual methods
# -- 16 public methods
# -- 17 private methods

	
	
# -- 18 signal listeners
func _on_levels_slider_value_changed(value: int):
	levels_value_label.text = "%02d" % value
	color_rect.material.set_shader_parameter("levels", value)
	
	
func _on_threshold_slider_value_changed(value: float):
	threshold_value_label.text = "%0.2f" % value
	color_rect.material.set_shader_parameter("threshold", value)
	
	
func _on_colors_slider_value_changed(value: int):
	colors_value_label.text = "%02d" % value
	color_rect.material.set_shader_parameter("colors", value)
	
	
func _on_pixelate_slider_value_changed(value: int):
	pixelate_value_label.text = "%02d" % value
	color_rect.material.set_shader_parameter("pixelate", value)
	
# -- 19 innerclasses

