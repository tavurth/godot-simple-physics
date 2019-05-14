extends RigidBody

const ACCELERATION = 0.5

func _ready():
	set_process_input(true)

func _input(event):
	## Do nothing if we haven't got the space key pressed
	## See Project -> Project Settings -> Input map
	if not Input.is_action_pressed('action_impulse'):
		return


	self.apply_impulse(
		self.get_translation() - Vector3(0, 10, 0),
		Vector3(0, ACCELERATION, ACCELERATION / 10)
	)
