extends Area2D

@onready var timer: Timer = $Timer #路径只从game到kill到timer，不经过其他节点需要进入

func _on_body_entered(body: Node2D) -> void:
	print("you died")
	timer.start()
	


func _on_timer_timeout() -> void: #计时器结束时运行
	get_tree().reload_current_scene() # Replace with function body.
