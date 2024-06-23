#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Umwandlung von Brüchen in Dezimalzahlen]
// Der Titel "Umwandlung von Brüchen in Dezimalzahlen" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Betrachte den Bruch $5/10$]
// Der Bruch wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[$arrow$ Wandle ihn in eine Dezimalzahl um!]
// Die Anweisung, den Bruch in eine Dezimalzahl umzuwandeln, wird ab Folie 2 angezeigt
#only("1")[#voiceover("Lass uns dein Wissen über die Umwandlung von Brüchen in Dezimalzahlen testen. Betrachte den Bruch fünf Zehntel.")]
#only("2")[#voiceover("Kannst du ihn in eine Dezimalzahl umwandeln?")]
]

//Typ: FREI 
#questionDef( 
questionText: "Was ist $\frac{5}{10}$ als Dezimalzahl?", 
answerOptions: ("$0.5$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //immer 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //immer 1 
), 
)