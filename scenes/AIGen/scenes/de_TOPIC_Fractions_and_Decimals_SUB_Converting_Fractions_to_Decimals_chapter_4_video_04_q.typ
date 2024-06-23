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
#only("1-")[Betrachte den Bruch $7/8$]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[$arrow$ Wandle ihn in eine Dezimalzahl $square/square$ um!]
#only("1")[#voiceover("Lass uns dein Wissen über die Umwandlung von Brüchen in Dezimalzahlen testen. Betrachte den Bruch sieben Achtel.")]
#only("2")[#voiceover("Kannst du ihn in eine Dezimalzahl umwandeln, indem wir eine Zahl durch eine andere teilen?")]
]

//Typ: FREI 
#questionDef( 
questionText: "Was ist $\frac{7}{8}$ als Dezimalzahl?", 
answerOptions: ("$0.875$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //immer 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //immer 1 
), 
)