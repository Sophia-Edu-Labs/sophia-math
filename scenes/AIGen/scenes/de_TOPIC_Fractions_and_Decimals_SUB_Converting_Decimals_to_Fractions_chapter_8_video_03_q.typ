#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Komplexe Dezimalzahlen in Brüche umwandeln]
// Der Titel "Komplexe Dezimalzahlen in Brüche umwandeln" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Betrachte die Dezimalzahl $4.567$]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[$arrow$ Wandle sie in einen Bruch $square/square$ um!]
#only("1")[#voiceover("Lass uns dein Wissen über das Umwandeln komplexer Dezimalzahlen in Brüche testen. Betrachte die Dezimalzahl vier Komma fünf sechs sieben.")]
#only("2")[#voiceover("Kannst du sie in einen Bruch umwandeln, bei dem wir eine Zahl durch eine andere teilen?")]
]

//Type: FREE 
#questionDef( 
questionText: "Welchem Bruch entspricht $4.567$?", 
answerOptions: ("$4567/1000$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //immer 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //immer 1 
), 
)