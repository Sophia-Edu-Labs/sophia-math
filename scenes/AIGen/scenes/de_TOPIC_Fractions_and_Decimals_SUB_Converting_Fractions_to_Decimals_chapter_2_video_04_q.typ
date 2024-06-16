#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Umwandlung von Brüchen in Dezimalzahlen]
// Der Titel "Umwandlung von Brüchen in Dezimalzahlen" wird auf allen Folien angezeigt
#v(40pt)

#only("1-")[Was ist $\dfrac{42}{1000}$ als Dezimalzahl?]
// Die Frage wird ab Folie 1 angezeigt

#only("1")[
#voiceover("Lass uns dein Wissen über die Umwandlung von Brüchen in Dezimalzahlen testen. Was ist zweiundvierzig durch eintausend als Dezimalzahl?")
]
]

//Typ: FREI 
#questionDef( 
questionText: "Was ist $\frac{42}{1000}$ als Dezimalzahl?", 
answerOptions: ("$0.042$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //immer 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //immer 1 
), 
)