#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Oberfläche zusammengesetzter Figuren]
#v(40pt)

#only("1-")[Wie berechnet man die Oberfläche einer zusammengesetzten Figur?]
#v(20pt)

#only("2-")[a) Alle Dimensionen multiplizieren 📏✖️]
#v(10pt)
#only("3-")[b) Die Volumen der einzelnen Teile addieren 📦➕]
#v(10pt)
#only("4-")[c) Die Oberflächen der einzelnen Teile addieren, wobei überlappende Bereiche subtrahiert werden 🧮➖]
#v(10pt)
#only("5-")[d) Die kleinere Figur von der größeren subtrahieren 🔽➖]

#only("1")[#voiceover("Lass uns dein Verständnis von zusammengesetzten Figuren testen. Wie berechnet man die Oberfläche einer zusammengesetzten Figur?")]
#only("2")[#voiceover("Ist es, indem man alle Dimensionen multipliziert?")]
#only("3")[#voiceover("Oder vielleicht, indem man die Volumen der einzelnen Teile addiert?")]
#only("4")[#voiceover("Vielleicht ist es, indem man die Oberflächen der einzelnen Teile addiert, aber überlappende Bereiche subtrahiert?")]
#only("5")[#voiceover("Oder könnte es sein, dass man die kleinere Figur von der größeren subtrahiert? Denk sorgfältig darüber nach, wie die Oberfläche bei komplexen Formen funktioniert, bevor du antwortest.")]
]

//Typ: MC 
#questionDef( 
questionText: "Wie berechnet man die Oberfläche einer zusammengesetzten Figur?", 
answerOptions: ("Alle Dimensionen multiplizieren", "Die Volumen der einzelnen Teile addieren", "Die Oberflächen der einzelnen Teile addieren, wobei überlappende Bereiche subtrahiert werden", "Die kleinere Figur von der größeren subtrahieren"),
correctAnswerIndex: 2 
)