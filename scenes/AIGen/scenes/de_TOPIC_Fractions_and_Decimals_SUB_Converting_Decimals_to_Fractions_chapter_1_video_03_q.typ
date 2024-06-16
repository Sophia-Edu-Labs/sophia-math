#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Umwandlung von Dezimalzahlen in Brüche]
// Der Titel "Umwandlung von Dezimalzahlen in Brüche" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Betrachte die Dezimalzahl $0.4$]
// Die Aufgabe wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[$arrow$ Wandle sie in einen Bruch $square/square$ um!]
#only("1")[#voiceover("Lass uns dein Wissen über die Umwandlung von Dezimalzahlen in Brüche testen. Betrachte die Dezimalzahl null Komma vier.")]
#only("2")[#voiceover("Kannst du sie in einen Bruch umwandeln, bei dem wir eine Zahl durch eine andere teilen?")]
]

//Typ: FREI 
#questionDef( 
questionText: "Übung 4 (FREI): Welchem Bruch entspricht $0.4$?", 
answerOptions: ("$\frac{4}{10}$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //immer 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //immer 1 
), 
)