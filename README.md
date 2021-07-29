# Godot FSM 2
This is an example of encapsulating a character's states using a fsm (Finite State Machine) model based on enviroment.

# Layers

### State ###
A state represents an enviroment where we can set possible actions like:
* Floor: You can do almost everything walk, jump, dash, shoot, etc...
* Air: In the air you cannot jump again (unless you want to make a double jump) so the actions are reduced to a character that jumped or is falling.
* Water: You will move with a different velocity as you swim.
* Vertical stairs: Climb up or down until get on floor, or jump from the stair and enters Air State.

### Char (Finite State Machine) ###
Contain the methods to load and manage the states (Must extends Entity).

### Entity ###
It's a abstraction of KinematicBody to simplify the methods and set a pattern to the character, so you don't need to create a move method on every state, just have to call with different forces.
