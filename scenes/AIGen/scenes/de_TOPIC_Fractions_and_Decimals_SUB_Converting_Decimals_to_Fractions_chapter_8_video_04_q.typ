#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Komplexe Dezimalzahlen in Brüche umwandeln]
// Der Titel "Komplexe Dezimalzahlen in Brüche umwandeln" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Betrachte die Dezimalzahl $6.789$]
// Die Aufgabe wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[$arrow$ Wandle sie in einen Bruch $square/square$ um!]
#only("1")[#voiceover("Lass uns dein Wissen über die Umwandlung komplexer Dezimalzahlen in Brüche testen. Betrachte die Dezimalzahl sechs Komma sieben acht neun.")]
#only("2")[#voiceover("Kannst du sie in einen Bruch umwandeln, bei dem eine Zahl durch eine andere geteilt wird?")]
]

//Typ: FREI 
#questionDef( 
questionText: "Übung 18 (FREI): Welchem Bruch entspricht $6.789$?", 
answerOptions: ("$6789/1000$", "Die Antwort ist falsch."),
correctAnswerIndex: 0, //immer 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //immer 1 
), 
)