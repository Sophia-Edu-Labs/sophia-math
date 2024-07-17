#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Brüche multiplizieren]
#v(40pt)
#only("1")[
#voiceover("Lass uns eine Übung zum Multiplizieren von Brüchen lösen.")
]
#only("2-")[
#text()[$1/2$ $dot$ $2/3$]
]
#v(20pt)
#only("2")[
#voiceover("Multipliziere ein Halb mit zwei Drittel.")
]
]#questionDef( 
questionText: "Multiplizieren Sie $\frac{1}{2}$ mit $\frac{2}{3}$.", 
answerOptions: ("$\frac{1}{3}$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)