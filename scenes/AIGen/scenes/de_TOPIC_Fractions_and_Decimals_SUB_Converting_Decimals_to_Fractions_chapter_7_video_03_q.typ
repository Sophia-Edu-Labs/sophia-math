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
#only("1-")[Betrachte die Dezimalzahl $5.678$]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[$arrow$ Wandle sie in einen Bruch $square/square$ um!]
#only("1")[#voiceover("Lass uns dein Wissen über die Umwandlung von Dezimalzahlen in Brüche testen. Betrachte die Dezimalzahl fünf Komma sechs sieben acht.")]
#only("2")[#voiceover("Kannst du sie in einen Bruch umwandeln, bei dem eine Zahl durch eine andere geteilt wird?")]
]

//Typ: FREI 
#questionDef( 
questionText: "Welchem Bruch entspricht $5.678$?", 
answerOptions: ("$5678/1000$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //immer 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //immer 1 
), 
)