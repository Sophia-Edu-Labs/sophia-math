#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Umwandlung von komplexen Brüchen in Dezimalzahlen]
#v(40pt)
#only("1-")[Betrachte den Bruch $3/5$]
#v(40pt)
#only("2-")[$arrow$ Wandle ihn in eine Dezimalzahl um!]
#only("1")[#voiceover("Lass uns dein Wissen über die Umwandlung von komplexen Brüchen in Dezimalzahlen testen. Betrachte den Bruch drei Fünftel.")]
#only("2")[#voiceover("Kannst du ihn in eine Dezimalzahl umwandeln?")]
]

//Typ: FREI 
#questionDef( 
questionText: "Was ist $\frac{3}{5}$ als Dezimalzahl?", 
answerOptions: ("$0.6$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //immer 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //immer 1 
), 
)