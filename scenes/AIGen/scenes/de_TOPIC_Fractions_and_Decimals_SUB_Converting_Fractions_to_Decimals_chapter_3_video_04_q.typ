#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Brüche in Dezimalzahlen umwandeln]
// Der Titel "Brüche in Dezimalzahlen umwandeln" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Betrachte den Bruch $1/5$]
// Der Bruch wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[$arrow$ Wandle ihn in eine Dezimalzahl um!]
#only("1")[#voiceover("Lass uns dein Wissen über das Umwandeln von Brüchen in Dezimalzahlen testen. Betrachte den Bruch ein Fünftel.")]
#only("2")[#voiceover("Kannst du ihn in eine Dezimalzahl umwandeln?")]
]

//Typ: FREI 
#questionDef( 
questionText: "Was ist $\frac{1}{5}$ als Dezimalzahl?", 
answerOptions: ("$0.2$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //immer 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //immer 1 
), 
)