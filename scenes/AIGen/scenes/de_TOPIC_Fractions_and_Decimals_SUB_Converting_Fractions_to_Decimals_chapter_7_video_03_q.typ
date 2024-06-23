#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Umwandlung von komplexen Brüchen in Dezimalzahlen]
// Der Titel "Umwandlung von komplexen Brüchen in Dezimalzahlen" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Betrachte den Bruch $9/20$]
// Der Bruch wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[$arrow$ Wandle ihn in eine Dezimalzahl um $square/square$!]
// Die Anweisung, in eine Dezimalzahl umzuwandeln, wird ab Folie 2 angezeigt
#only("1")[#voiceover("Lass uns dein Wissen über die Umwandlung von komplexen Brüchen in Dezimalzahlen testen. Betrachte den Bruch neun zwanzigstel.")]
#only("2")[#voiceover("Kannst du ihn in eine Dezimalzahl umwandeln, wobei wir ihn in Form einer Zahl mit einem Dezimalpunkt ausdrücken?")]
]

//Typ: FREI 
#questionDef( 
questionText: "Was ist $\frac{9}{20}$ als Dezimalzahl?", 
answerOptions: ("$0.45$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //immer 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //immer 1 
), 
)