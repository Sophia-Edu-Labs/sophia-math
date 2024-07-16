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

#only("1")[
#voiceover("Betrachten wir die Aufgabe.")
]

#only("2-")[#text()[$5 dot 3/4$]]
// Die Aufgabe $5 dot 3/4$ wird ab Folie 2 angezeigt

#v(40pt)

#only("3-")[Was ist das Ergebnis der Multiplikation von $5$ mit $3/4$?]
// Die Frage "Was ist das Ergebnis der Multiplikation von 5 mit 3/4?" wird ab Folie 3 angezeigt

#only("3")[
#voiceover("Fünf mal drei Viertel.")
]

#only("2")[
#voiceover("Was ist das Ergebnis der Multiplikation von fünf mit drei Viertel?")
]
]#questionDef( 
questionText: "Multiplizieren Sie $5$ mit $\frac{3}{4}$.", 
answerOptions: ("$\frac{15}{4}$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)