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
#voiceover("Lass uns die Aufgabe lösen.")
]

#only("2-")[#text()[$ 3 dot 1/2 $]]
#v(20pt)

#only("2")[
#voiceover("Multipliziere 3 mit ein halb.")
]
]#questionDef( 
questionText: "Multiplizieren Sie $3$ mit $\frac{1}{2}$.", 
answerOptions: ("$\frac{3}{2}$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)