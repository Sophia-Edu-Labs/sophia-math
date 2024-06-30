#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Oberfläche eines Würfels]
#v(40pt)

#only("1-")[Wie berechnest du die Oberfläche eines Würfels? 📏🧊]
#v(20pt)

#only("2-")[a) 6 × Seitenlänge]
#v(10pt)
#only("3-")[b) Seitenlänge × Seitenlänge]
#v(10pt)
#only("4-")[c) 6 × (Seitenlänge × Seitenlänge)]
#v(10pt)
#only("5-")[d) Seitenlänge × Seitenlänge × Seitenlänge]

#only("1")[#voiceover("Lass uns dein Verständnis der Würfelgeometrie testen. Wie berechnest du die Oberfläche eines Würfels?")]
#only("2")[#voiceover("Ist es sechs mal die Seitenlänge,")]
#only("3")[#voiceover("oder ist es Seitenlänge mal Seitenlänge,")]
#only("4")[#voiceover("oder vielleicht sechs mal Seitenlänge mal Seitenlänge,")]
#only("5")[#voiceover("oder könnte es Seitenlänge mal Seitenlänge mal Seitenlänge sein?")]
]

//Typ: MC 
#questionDef( 
questionText: "Wie berechnest du die Oberfläche eines Würfels?", 
answerOptions: ("$6 \\times \\text{Seitenlänge}$", "$\\text{Seitenlänge} \\times \\text{Seitenlänge}$", "$6 \\times (\\text{Seitenlänge} \\times \\text{Seitenlänge})$", "$\\text{Seitenlänge} \\times \\text{Seitenlänge} \\times \\text{Seitenlänge}$"),
correctAnswerIndex: 2 
)