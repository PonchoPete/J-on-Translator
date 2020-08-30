extends Node

var jonDict: Dictionary = {
	"a": "alfa",
	"b": "bravo",
	"c": "charlie",
	"d": "delta",
	"e": "echo",
	"f": "foxtrot",
	"g": "golf",
	"h": "hotel",
	"i": "india",
	"j": "jerma",
	"k": "kilo",
	"l": "lima",
	"m": "mike",
	"n": "november",
	"o": "oscar",
	"p": "papa",
	"q": "quebec",
	"r": "romeo",
	"s": "sierra",
	"t": "tango",
	"u": "uniform",
	"v": "victor",
	"w": "whiskey",
	"x": "xray",
	"y": "yankee",
	"z": "zulu",
}

onready var english = get_node("CanvasLayer/TabContainer/Otto Conversion/VSplitContainer/English")
onready var jonese = get_node("CanvasLayer/TabContainer/Otto Conversion/VSplitContainer2/Jonese")

func _on_English_text_changed(): #translates english to jonese
	jonese.set_text("")
	var telephony: String = ""
	for letter in english.get_text():
		telephony = jonDict.get(letter.to_lower(), letter)
		if letter == letter.to_upper(): telephony = telephony.to_upper()
		jonese.set_text(str(jonese.text, telephony))

func _on_Jonese_text_changed(): #translates jonese to english
	english.set_text(jonese.get_text())
	for key in jonDict.keys(): #I'm sure there is a better alternative to this method
		english.set_text(english.get_text().replace(jonDict.get(key), key)) #replaces lowercase words to letters
		english.set_text(english.get_text().replace(jonDict.get(key).to_upper(), key.to_upper())) # replaces uppercase words to letters
