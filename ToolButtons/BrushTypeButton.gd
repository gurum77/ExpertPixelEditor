extends TextureButton


var last_drawn_thickness = 0

func _ready():
	$GridContainer.visible = false
	
func _draw():
	var center_position = Vector2(rect_size.x / 2, rect_size.y / 2)
	var pixels = GeometryMaker.get_pixels_by_thickness(center_position, StaticData.pencil_thickness)
	for pixel in pixels:
		draw_circle(pixel, 1, Color.black)
#	last_drawn_thickness = StaticData.pencil_thickness

func _process(_delta):
	if last_drawn_thickness != StaticData.pencil_thickness:
		update()


func _on_RectangleButton_pressed():
	$GridContainer.visible = false
	StaticData.brush_type = StaticData.BrushType.rectangle
	update()


func _on_CircleButton_pressed():
	$GridContainer.visible = false
	StaticData.brush_type = StaticData.BrushType.circle
	update()


func _on_BrushTypeButton_pressed():
	$GridContainer.visible = true
