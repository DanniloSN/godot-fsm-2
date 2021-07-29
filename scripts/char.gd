extends Entity

const STATES = {}
var state

func _ready():
	add_to_group("char")
	_loadStates()
	_setState("Air")

func _loadStates():
	var statesAux = $States.get_children()
	for state in statesAux:
		STATES[state.name] = state

func _setState(state: String):
	if(!STATES.has(state)): return
	if(self.state != null):
		self.state._exit()
		self.state._destroy()
	var newState = STATES[state]
	newState._constructor(self)
	newState._enter()
	self.state = newState

func _physics_process(delta):
	$HUD/LabelState.text = str(Engine.get_frames_per_second())
	if(state && state.has_method("_update")): state._update(delta)
	if(state && state.has_method("_handle_input")): state._handle_input(delta)
