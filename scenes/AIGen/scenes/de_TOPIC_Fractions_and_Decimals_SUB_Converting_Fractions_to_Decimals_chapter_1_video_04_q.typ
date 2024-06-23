#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Brüche in Dezimalzahlen umwandeln]
#v(40pt)

#only("1-")[#text()[$12/100$]]
#v(20pt)
#only("2-")[$arrow$ Wandle es in eine Dezimalzahl um!]
#v(20pt)
#only("3-")[$12 ÷ 100 = 0,12$]

#only("1")[#voiceover("Lass uns dein Wissen über das Umwandeln von Brüchen in Dezimalzahlen testen. Betrachte den Bruch zwölf Hundertstel.")]
#only("2")[#voiceover("Kannst du ihn in eine Dezimalzahl umwandeln?")]
#only("3")[#voiceover("Um zwölf Hundertstel in eine Dezimalzahl umzuwandeln, teilen wir zwölf durch hundert, was null Komma eins zwei ergibt.")]
]

//Typ: FREI 
#questionDef( 
questionText: "Was ist $\frac{12}{100}$ als Dezimalzahl?", 
answerOptions: ("$0.12$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //immer 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //immer 1 
), 
)