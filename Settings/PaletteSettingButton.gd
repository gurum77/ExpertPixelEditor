extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	Util.set_tooltip(self, tr("Palette options"), "")


func _on_PaletteSettingButton_pressed():
	$PaletteSettingPopup.popup_centered()
