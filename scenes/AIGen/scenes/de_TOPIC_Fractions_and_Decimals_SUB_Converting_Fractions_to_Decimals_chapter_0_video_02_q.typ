#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Umwandlung von Brüchen in Dezimalzahlen]
// Der Titel "Umwandlung von Brüchen in Dezimalzahlen" wird auf dieser Folie gezeigt
#v(40pt)
#only("1-")[Was ist $3/10$ als Dezimalzahl?]
// Die Frage wird ab Folie 1 gezeigt
#v(40pt)
#only("2-")[a) $0.3$]
// Antwortoption a) wird ab Folie 2 gezeigt
#v(10pt)
#only("3-")[b) $3.0$]
// Antwortoption b) wird ab Folie 3 gezeigt
#v(10pt)
#only("4-")[c) $0.03$]
// Antwortoption c) wird ab Folie 4 gezeigt
#v(10pt)
#only("5-")[d) $30$]
// Antwortoption d) wird ab Folie 5 gezeigt
#only("1")[#voiceover("Lass uns dein Wissen über die Umwandlung von Brüchen in Dezimalzahlen testen. Was ist drei Zehntel als Dezimalzahl?")]
#only("2")[#voiceover("Ist es null Komma drei,")]
#only("3")[#voiceover("oder ist es drei Komma null,")]
#only("4")[#voiceover("oder vielleicht null Komma null drei,")]
#only("5")[#voiceover("oder ist es dreißig?")]
]

//Typ: MC 
#questionDef( 
questionText: "Was ist $\frac{3}{10}$ als Dezimalzahl?", 
answerOptions: ("$0.3$", "$3.0$", "$0.03$", "$30$"),
correctAnswerIndex: 0 
)