extends CharacterBody2D

@export var velocidad := 200.0

func _physics_process(delta):
	var direccion = Vector2.ZERO

	# Movimiento horizontal
	if Input.is_action_pressed("ui_right"):
		direccion.x += 1

	if Input.is_action_pressed("ui_left"):
		direccion.x -= 1

	# Movimiento vertical
	if Input.is_action_pressed("ui_down"):
		direccion.y += 1

	if Input.is_action_pressed("ui_up"):
		direccion.y -= 1

	# Evita movimiento más rápido en diagonal
	direccion = direccion.normalized()

	velocity = direccion * velocidad

	move_and_slide()
