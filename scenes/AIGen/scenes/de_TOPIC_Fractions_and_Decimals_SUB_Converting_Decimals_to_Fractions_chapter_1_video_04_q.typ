#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Umwandlung von Dezimalzahlen in Brüche]
// Der Titel "Umwandlung von Dezimalzahlen in Brüche" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Betrachte die Dezimalzahl $0.9$]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[$arrow$ Wandle sie in einen Bruch $square/square$ um!]
#only("1")[#voiceover("Lass uns dein Wissen über die Umwandlung von Dezimalzahlen in Brüche testen. Betrachte die Dezimalzahl null Komma neun.")]
#only("2")[#voiceover("Kannst du sie in einen Bruch umwandeln, bei dem wir eine Zahl durch eine andere teilen?")]
]

//Typ: FREI 
#questionDef( 
questionText: "Übung 4 (FREI): Welchem Bruch entspricht $0.9$?", 
answerOptions: ("$\\frac{9}{10}$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //immer 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //immer 1 
), 
)