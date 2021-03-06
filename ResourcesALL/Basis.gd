extends Node2D

var q_Basis: Basis = Autoload.get_basis()

@onready var counter: float = Autoload.get_rand_time()


func alt_process(delta) -> void:
	counter -= delta

	if counter <= 0:
		counter = Autoload.get_rand_time()

		nodeFunction(q_Basis, true)


func nodeFunction(q_Basis: Basis, can_reset: bool = false) -> void:
	if can_reset:
		if randi() % 2 == 1:
			q_Basis = Basis(Autoload.get_quat())
		if randi() % 2 == 1:
			q_Basis = Basis(Autoload.get_vector3())
		if randi() % 2 == 1:
			q_Basis = Basis(Autoload.get_vector3(), Autoload.get_float())
		if randi() % 2 == 1:
			q_Basis = Basis(Autoload.get_vector3(), Autoload.get_vector3(), Autoload.get_vector3())

	if randi() % 2 == 1:
		q_Basis.determinant()

	if randi() % 2 == 1:
		q_Basis.get_euler()
	if randi() % 2 == 1:
		q_Basis.get_orthogonal_index()
	if randi() % 2 == 1:
		q_Basis.get_rotation_quat()
	if randi() % 2 == 1:
		q_Basis.get_scale()

	if randi() % 2 == 1:
		q_Basis.inverse()
#	if randi() % 2 == 1:
#		q_Basis.is_equal_approx(Autoload.get_basis(), Autoload.get_float())
	if randi() % 2 == 1:
		q_Basis.orthonormalized()
	if randi() % 2 == 1:
		q_Basis.rotated(Autoload.get_vector3(), Autoload.get_float())
	if randi() % 2 == 1:
		q_Basis.scaled(Autoload.get_vector3())
	if randi() % 2 == 1:
		q_Basis.slerp(Autoload.get_basis(), Autoload.get_float())

	if randi() % 2 == 1:
		q_Basis.tdotx(Autoload.get_vector3())
	if randi() % 2 == 1:
		q_Basis.tdoty(Autoload.get_vector3())
	if randi() % 2 == 1:
		q_Basis.tdotz(Autoload.get_vector3())

	if randi() % 2 == 1:
		q_Basis.transposed()

#	if randi() % 2 == 1:
#		q_Basis.xform(Autoload.get_vector3())
#	if randi() % 2 == 1:
#		q_Basis.xform_inv(Autoload.get_vector3())
