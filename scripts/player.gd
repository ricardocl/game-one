extends CharacterBody2D

@export var velocidad := 150.0

@onready var anim: AnimatedSprite2D = $AnimatedSprite2D

func _ready():
	anim.play("idle")

func _physics_process(delta):
	var direccion = Vector2.ZERO
	if Input.is_action_pressed("ui_right"):
		direccion.x += 1
	if Input.is_action_pressed("ui_left"):
		direccion.x -= 1
	if Input.is_action_pressed("ui_down"):
		direccion.y += 1
	if Input.is_action_pressed("ui_up"):
		direccion.y -= 1
	direccion = direccion.normalized()
	velocity = direccion * velocidad
	move_and_slide()
