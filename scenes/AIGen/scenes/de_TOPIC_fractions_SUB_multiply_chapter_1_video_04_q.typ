#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Brüche multiplizieren]
// Der Titel "Brüche multiplizieren" wird auf allen Folien angezeigt

#v(40pt)

#only("1-")[#text()[$frac(2,3) * frac(3,4)$]]
// Die zu multiplizierenden Brüche werden ab Folie 1 angezeigt

#v(40pt)

#only("1")[
#voiceover("Lass uns zwei Drittel mit drei Vierteln multiplizieren.")
]
]#questionDef( 
questionText: "Multiplizieren Sie $\frac{2}{3}$ mit $\frac{3}{4}$.", 
answerOptions: ("$\frac{1}{2}$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)