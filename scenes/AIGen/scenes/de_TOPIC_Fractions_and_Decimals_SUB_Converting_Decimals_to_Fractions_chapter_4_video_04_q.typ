#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Umwandlung von Dezimalzahlen mit führenden Nullen in Brüche]
// Der Titel "Umwandlung von Dezimalzahlen mit führenden Nullen in Brüche" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Betrachte die Dezimalzahl $0.09$]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[$arrow$ Wandle sie in einen Bruch $square/square$ um!]
#only("1")[#voiceover("Lass uns dein Wissen testen, wie man Dezimalzahlen mit führenden Nullen in Brüche umwandelt. Betrachte die Dezimalzahl null Komma null neun.")]
#only("2")[#voiceover("Kannst du sie in einen Bruch umwandeln, bei dem wir eine Zahl durch eine andere teilen?")]
]

//Typ: FREI 
#questionDef( 
questionText: "Welchem Bruch entspricht $0.09$?", 
answerOptions: ("$\\frac{9}{100}$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //immer 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //immer 1 
), 
)