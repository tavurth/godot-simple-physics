extends RigidBody

const ACCELERATION = 0.5

func _ready():
	set_process_input(true)

func apply_local_impulse(impulseDirection):
	var global_direction = global_transform.basis.xform(impulseDirection.normalized())

	apply_impulse(Vector3(0,0,0), global_direction * impulseDirection) # Apply to bodies center

func _input(event):
	## Do nothing if we haven't got the space key pressed
	## See Project -> Project Settings -> Input map
	if not Input.is_action_pressed('action_impulse'):
		return

	apply_local_impulse(Vector3(0, -5, 0))

