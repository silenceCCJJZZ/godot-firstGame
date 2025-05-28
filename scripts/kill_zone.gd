extends Area2D

@onready var timer: Timer = $Timer #路径只从game到kill到timer，不经过其他节点需要进入

func _on_body_entered(body: Node2D) -> void:
	print("you died")
	#制作死亡慢动作
	Engine.time_scale = 0.5
	body.get_node("CollisionShape2D").queue_free()
	timer.start()
	


func _on_timer_timeout() -> void: #计时器结束时运行
	Engine.time_scale = 1 #复活后，速率正常
	get_tree().reload_current_scene() # Replace with function body.
