#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Umwandlung von Brüchen in Dezimalzahlen]
// Der Titel "Umwandlung von Brüchen in Dezimalzahlen" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Betrachte den Bruch $1/4$]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[$arrow$ Was ist das als Dezimalzahl?]
#only("1")[#voiceover("Lass uns dein Wissen über die Umwandlung von Brüchen in Dezimalzahlen testen. Betrachte den Bruch ein Viertel.")]
#only("2")[#voiceover("Kannst du ihn in eine Dezimalzahl umwandeln?")]
]

//Typ: FREI 
#questionDef( 
questionText: "Was ist $\frac{1}{4}$ als Dezimalzahl?", 
answerOptions: ("$0.25$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //immer 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //immer 1 
), 
)