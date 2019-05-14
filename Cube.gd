extends RigidBody

func _ready():
	set_process(true)
	
func _process(delta):
	## Do nothing if we haven't got the space key pressed
	## See Project -> Project Settings -> Input map
	if not Input.is_action_pressed('action_impulse'):
		return
	
	print("Applying impulse")
	self.apply_impulse(
		self.get_translation(),
		Vector3(0, 100, 0)
	)