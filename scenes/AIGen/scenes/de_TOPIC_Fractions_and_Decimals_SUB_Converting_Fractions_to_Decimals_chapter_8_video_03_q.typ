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
#only("1-")[Betrachte den Bruch $4/25$]
// Der Bruch $4/25$ wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[$arrow$ Wandle ihn in eine Dezimalzahl um!]
// Die Anweisung, in eine Dezimalzahl umzuwandeln, wird ab Folie 2 angezeigt
#only("1")[#voiceover("Lass uns dein Wissen über das Umwandeln von komplexeren Brüchen in Dezimalzahlen testen. Betrachte den Bruch vier durch fünfundzwanzig.")]
#only("2")[#voiceover("Kannst du ihn in eine Dezimalzahl umwandeln?")]
]

//Type: FREE 
#questionDef( 
questionText: "Was ist $\frac{4}{25}$ als Dezimalzahl?", 
answerOptions: ("$0.16$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //immer 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //immer 1 
), 
)