extends Button
class_name Btn


export var is_exit := false
export var is_focused := false
export var path : String


func _ready():
	if is_focused:
		grab_focus()


func on_pressed() -> void:
	if is_exit:
		get_tree().quit()
	else:
# warning-ignore:return_value_discarded
		get_tree().change_scene(path)
