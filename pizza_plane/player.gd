extends Area2D

func _process(delta):
	if Input.is_action_pressed("up"):
		position.y -= 400*delta
		
	if Input.is_action_pressed("down"):
		position.y += 400*delta
	
	position = position.clamp(Vector2(100, 30), Vector2(100, 490))
