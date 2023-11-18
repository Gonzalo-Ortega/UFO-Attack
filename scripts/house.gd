extends Area2D

# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimatedSprite2D.play("default")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _physics_process(delta):
	pass

var is_dying = false
func die():
	if not is_dying:
		$AnimatedSprite2D.play("destroyed")
		$CollisionShape2D.queue_free()
		GlobalVariables.score += 10
