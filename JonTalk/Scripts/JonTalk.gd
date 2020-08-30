extends Node2D

onready var english = get_node("CanvasLayer/TabContainer/Auto Conversion/VSplitContainer/English")
onready var jonese = get_node("CanvasLayer/TabContainer/Auto Conversion/VSplitContainer2/Jonese")

func _on_English_text_changed():
	jonese.text = ""
	var telephony = ""
	for letter in english.text:
		match(letter.to_lower()):
			'a': telephony = "alfa"
			'b': telephony = "bravo"
			'c': telephony = "charlie"
			'd': telephony = "delta"
			'e': telephony = "echo"
			'f': telephony = "foxtrot"
			'g': telephony = "golf"
			'h': telephony = "hotel"
			'i': telephony = "india"
			'j': telephony = "jerma"
			'k': telephony = "kilo"
			'l': telephony = "lima"
			'm': telephony = "mike"
			'n': telephony = "november"
			'o': telephony = "oscar"
			'p': telephony = "papa"
			'q': telephony = "quebec"
			'r': telephony = "romeo"
			's': telephony = "sierra"
			't': telephony = "tango"
			'u': telephony = "uniform"
			'v': telephony = "victor"
			'w': telephony = "whiskey"
			'x': telephony = "xray"
			'y': telephony = "yankee"
			'z': telephony = "zulu"
			_: telephony = letter
		if letter == letter.to_upper(): telephony = telephony.to_upper()
		jonese.text = str(jonese.text, telephony)

func _on_Jonese_text_changed():
	english.text = jonese.text
	english.text = english.text.replace("alfa", "a")
	english.text = english.text.replace("bravo", "b")
	english.text = english.text.replace("charlie", "c")
	english.text = english.text.replace("delta", "d")
	english.text = english.text.replace("echo", "e")
	english.text = english.text.replace("foxtrot", "f")
	english.text = english.text.replace("golf", "g")
	english.text = english.text.replace("hotel", "h")
	english.text = english.text.replace("bravo", "i")
	english.text = english.text.replace("jerma", "j")
	english.text = english.text.replace("kilo", "k")
	english.text = english.text.replace("lima", "l")
	english.text = english.text.replace("mike", "m")
	english.text = english.text.replace("november", "n")
	english.text = english.text.replace("oscar", "o")
	english.text = english.text.replace("papa", "p")
	english.text = english.text.replace("quebec", "q")
	english.text = english.text.replace("romeo", "r")
	english.text = english.text.replace("sierra", "s")
	english.text = english.text.replace("tango", "t")
	english.text = english.text.replace("uniform", "u")
	english.text = english.text.replace("victor", "v")
	english.text = english.text.replace("whiskey", "w")
	english.text = english.text.replace("xray", "x")
	english.text = english.text.replace("yankee", "y")
	english.text = english.text.replace("zulu", "z")
	english.text = english.text.replace("ALFA", "A")
	english.text = english.text.replace("BRAVO", "B")
	english.text = english.text.replace("CHARLIE", "C")
	english.text = english.text.replace("DELTA", "D")
	english.text = english.text.replace("ECHO", "E")
	english.text = english.text.replace("FOXTROT", "F")
	english.text = english.text.replace("GOLF", "G")
	english.text = english.text.replace("HOTEL", "H")
	english.text = english.text.replace("BRAVO", "I")
	english.text = english.text.replace("JERMA", "J")
	english.text = english.text.replace("KILO", "K")
	english.text = english.text.replace("LIMA", "L")
	english.text = english.text.replace("MIKE", "M")
	english.text = english.text.replace("NOVEMBER", "N")
	english.text = english.text.replace("OSCAR", "O")
	english.text = english.text.replace("PAPA", "P")
	english.text = english.text.replace("QUEBEC", "Q")
	english.text = english.text.replace("ROMEO", "R")
	english.text = english.text.replace("SIERRA", "S")
	english.text = english.text.replace("TANGO", "T")
	english.text = english.text.replace("UNIFORM", "U")
	english.text = english.text.replace("VICTOR", "V")
	english.text = english.text.replace("WHISKEY", "W")
	english.text = english.text.replace("XRAY", "X")
	english.text = english.text.replace("YANKEE", "Y")
	english.text = english.text.replace("ZULU", "Z")
