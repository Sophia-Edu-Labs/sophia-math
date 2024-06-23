#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Brüche in Dezimalzahlen umwandeln]
// Der Titel "Brüche in Dezimalzahlen umwandeln" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Was ist $2/5$ als Dezimalzahl?]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) $0.25$]
// Antwortoption a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) $0.4$]
// Antwortoption b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) $0.5$]
// Antwortoption c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) $0.2$]
// Antwortoption d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns dein Wissen über das Umwandeln von Brüchen in Dezimalzahlen testen. Was ist zwei Fünftel als Dezimalzahl?")]
#only("2")[#voiceover("Ist es null Komma zwei fünf,")]
#only("3")[#voiceover("oder ist es null Komma vier,")]
#only("4")[#voiceover("oder vielleicht null Komma fünf,")]
#only("5")[#voiceover("oder ist es null Komma zwei?")]
]

//Typ: MC 
#questionDef( 
questionText: "Was ist $\frac{2}{5}$ als Dezimalzahl?", 
answerOptions: ("$0.25$", "$0.4$", "$0.5$", "$0.2$"),
correctAnswerIndex: 1
)