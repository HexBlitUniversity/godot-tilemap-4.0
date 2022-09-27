extends Node2D

@onready var downArrow: AnimatedSprite2D = $Camera2d/DownArrow
@onready var upArrow: AnimatedSprite2D = $Camera2d/UpArrow
@onready var leftArrow: AnimatedSprite2D = $Camera2d/LeftArrow
@onready var rightArrow: AnimatedSprite2D = $Camera2d/RightArrow
@onready var camera: Camera2D = $Camera2d



func _ready():
	pass # Replace with function body.


func _physics_process(delta):

	if Input.is_action_just_pressed("Up"):
		upArrow.frame = 0
		upArrow.visible = true
		upArrow.playing = true
	elif Input.is_action_just_pressed("Down"):
		downArrow.frame = 0
		downArrow.visible = true
		downArrow.playing = true
	elif Input.is_action_just_pressed("Left"):
		leftArrow.frame = 0
		leftArrow.visible = true
		leftArrow.playing = true
	elif Input.is_action_just_pressed("Right"):
		rightArrow.frame = 0
		rightArrow.visible = true
		rightArrow.playing = true
		
	if Input.is_action_just_released("Up"):
		upArrow.visible = false
		upArrow.frame = 0
	elif Input.is_action_just_released("Down"):
		downArrow.visible = false
		downArrow.frame = 0
	elif Input.is_action_just_released("Left"):
		leftArrow.visible = false
		leftArrow.frame = 0
	elif Input.is_action_just_released("Right"):
		rightArrow.visible = false
		rightArrow.frame = 0


