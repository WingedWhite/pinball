extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#flippers logic:
	if Input.is_action_just_pressed("LeftFlipper"):
		$FlipperLeft/LeftFlipperAP.play("LeftFlip")
	if Input.is_action_just_released("LeftFlipper"):
		$FlipperLeft/LeftFlipperAP.play("LeftUnflip")
		$FlipperLeft/LeftFlipperAP.play("RESET")
	if Input.is_action_just_pressed("RightFlipper"):
		$FlipperRight/RightFlipperAP.play("RightFlip")
	if Input.is_action_just_released("RightFlipper"):
		$FlipperRight/RightFlipperAP.play("RightUnflip")
		$FlipperRight/RightFlipperAP.play("RESET")
	pass
