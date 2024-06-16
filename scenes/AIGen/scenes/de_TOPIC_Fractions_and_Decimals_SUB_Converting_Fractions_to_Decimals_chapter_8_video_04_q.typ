#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Komplexere Brüche in Dezimalzahlen umwandeln]
// Der Titel "Komplexere Brüche in Dezimalzahlen umwandeln" wird auf allen Folien angezeigt
#v(40pt)

#only("1-")[Betrachte den Bruch $7/20$]
// Der Bruch 7/20 wird ab Folie 1 angezeigt

#v(40pt)

#only("2-")[$arrow$ Wandle ihn in eine Dezimalzahl $square$ um!]
// Die Anweisung, in eine Dezimalzahl umzuwandeln, wird ab Folie 2 angezeigt

#only("1")[#voiceover("Lass uns dein Wissen über das Umwandeln von komplexeren Brüchen in Dezimalzahlen testen. Betrachte den Bruch sieben zwanzigstel.")]
#only("2")[#voiceover("Kannst du ihn in eine Dezimalzahl umwandeln?")]
]

//Typ: FREI 
#questionDef( 
questionText: "Was ist $\frac{7}{20}$ als Dezimalzahl?", 
answerOptions: ("$0.35$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //immer 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //immer 1 
), 
)