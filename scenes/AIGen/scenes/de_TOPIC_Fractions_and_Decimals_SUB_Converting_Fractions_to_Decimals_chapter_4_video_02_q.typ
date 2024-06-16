#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Brüche in Dezimalzahlen umwandeln]
// Der Titel "Brüche in Dezimalzahlen umwandeln" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Was ist $3/8$ als Dezimalzahl?]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) $0.375$]
// Antwortoption a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) $0.38$]
// Antwortoption b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) $0.35$]
// Antwortoption c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) $0.3$]
// Antwortoption d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns dein Wissen über das Umwandeln von Brüchen in Dezimalzahlen testen. Was ist drei Achtel als Dezimalzahl?")]
#only("2")[#voiceover("Ist es null Komma drei sieben fünf,")]
#only("3")[#voiceover("oder ist es null Komma drei acht,")]
#only("4")[#voiceover("oder vielleicht null Komma drei fünf,")]
#only("5")[#voiceover("oder ist es null Komma drei?")]
]

//Typ: MC 
#questionDef( 
questionText: "Was ist $\frac{3}{8}$ als Dezimalzahl?", 
answerOptions: ("$0.375$", "$0.38$", "$0.35$", "$0.3$"),
correctAnswerIndex: 0 
)