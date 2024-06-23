#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Umwandlung von Dezimalzahlen mit höherer Komplexität in Brüche]
#v(40pt)
#only("1-")[Betrachte die Dezimalzahl $3.042$]
#v(40pt)
#only("2-")[$arrow$ In welchen Bruch lässt sie sich umwandeln?]
#only("1")[#voiceover("Lass uns dein Wissen über die Umwandlung von Dezimalzahlen mit höherer Komplexität in Brüche testen. Betrachte die Dezimalzahl drei Komma null vier zwei.")]
#only("2")[#voiceover("Kannst du bestimmen, in welchen Bruch diese Dezimalzahl umgewandelt werden kann?")]
]

//Typ: FREI 
#questionDef( 
questionText: "In welchen Bruch lässt sich $3.042$ umwandeln?", 
answerOptions: ("$\\frac{3042}{1000}$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //immer 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //immer 1 
), 
)