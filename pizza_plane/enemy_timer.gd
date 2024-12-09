extends Timer

@export var gameWorld: Node2D

func _on_timeout():
	# var enemy_sprite = randi_range(1, get_child_count())
	var enemy_sprite = 2   # Pizza
	var new_enemy:RigidBody2D = get_child(enemy_sprite - 1).duplicate()
	new_enemy.visible = true
	new_enemy.position.x = 1000
	new_enemy.position.y = randi_range(30, 490)

	gameWorld.add_child(new_enemy)
	new_enemy.apply_impulse(Vector2(-randf_range(300, 600), 0))
