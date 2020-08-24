tool
extends Building
class_name Destillery

const DESTILLERY_IDLE = preload("res://Assets/World/Buildings/Pioneers/Destillery/Sprites/Destillery_idle.png")

const DESTILLERY_WORK_ANIM = preload("res://Assets/World/Buildings/Pioneers/Destillery/Sprites/Destillery_work_anim.png")
const DESTILLERY_WORK_ANIM_REGION_Y = [
	98*0, 98*1, 98*2, 98*3
]

func animate() -> void:
	match action:
		"idle":
			current_anim = null
			self.texture = DESTILLERY_IDLE
			_billboard.vframes = 2
			_billboard.hframes = 2
			_billboard.region_rect = Rect2(0, 0, 256, 196)
			_billboard.region_enabled = true

		"work":
			current_anim = DESTILLERY_WORK_ANIM
			self.texture = DESTILLERY_WORK_ANIM
			_billboard.vframes = 1
			_billboard.hframes = 5
			_billboard.region_rect = Rect2(0, DESTILLERY_WORK_ANIM_REGION_Y[self.rotation_index], 640, 98)
			_billboard.region_enabled = true

			_billboard.frame = next_frame()

	.animate()
