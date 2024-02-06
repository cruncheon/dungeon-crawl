@tool

extends "res://addons/level_block/level_block_node.gd"

## Button for ButtonBlock2
## Has light switch function

func interact():
	if west_face == 7:
		self.west_face = 8
		self.bottom_face = -1
		
		## Light Up Hallway
		$"../../Lights/OmniLight2".light_color = Color("ffdabf")
		$"../../Lights/OmniLight2".omni_range = 6
		
		$"../../Lights/OmniLight5".light_color = Color("ffdabf")
		$"../../Lights/OmniLight5".omni_range = 6
		
		$"../../Lights/OmniLight6".light_color = Color("ffdabf")
		$"../../Lights/OmniLight6".omni_range = 6
		
	elif west_face == 8:
		self.west_face = 7
		self.bottom_face = 5
		
		## Revert Hallway lights
		$"../../Lights/OmniLight2".light_color = Color("ff4947")
		$"../../Lights/OmniLight2".omni_range = 8
		
		$"../../Lights/OmniLight5".light_color = Color("ff4947")
		$"../../Lights/OmniLight5".omni_range = 3
		
		$"../../Lights/OmniLight6".light_color = Color("ff4947")
		$"../../Lights/OmniLight6".omni_range = 3
		
		
		

