extends Node2D
var elementos = [ 
	"res://galleryfotos/mattrefsheet.JPG",
	"res://galleryfotos/agatharefsheet.JPG",
	"res://galleryfotos/SAVREFSHEET.jpg",
	"res://galleryfotos/VIDEOREFSHEET.ogv"
]
var indice = 0



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	mostrar_elemento()

func _on_botonadelante_pressed() -> void:
	indice += 1
	if indice >= elementos.size():
		indice = 0 
	mostrar_elemento()

func _on_botonatras_pressed() -> void:
	indice -= 1 
	if indice < 0 :
		indice = elementos.size() - 1 
	mostrar_elemento()



func mostrar_elemento():
	var ruta = elementos[indice]
	if ruta.ends_with(".ogv"):
		# es un video
		$TextureRect.visible = false 
		$TextureRect.visible = true
		$VideoStreamPlayer.stream = load(ruta)
		$VideoStreamPlayer.play()
		$TextureRect.texture = $VideoStreamPlayer.get_video_texture()
	else: # es una imagen
		$VideoStreamPlayer.visible = false
		$VideoStreamPlayer.stop()
		$TextureRect.visible = true
		$TextureRect.texture = load(ruta)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_botonmenu_pressed() -> void:
	get_tree().change_scene_to_file("res://escenas/menupantalla.tscn")
