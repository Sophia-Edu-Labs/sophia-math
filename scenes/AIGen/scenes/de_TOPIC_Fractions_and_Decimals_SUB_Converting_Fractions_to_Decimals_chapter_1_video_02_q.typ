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
#only("1-")[Was ist $25/100$ als Dezimalzahl?]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) $2.5$]
// Antwortoption a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) $0.25$]
// Antwortoption b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) $25.0$]
// Antwortoption c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) $0.025$]
// Antwortoption d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns dein Wissen über die Umwandlung von Brüchen in Dezimalzahlen testen. Was ist fünfundzwanzig Hundertstel als Dezimalzahl?")]
#only("2")[#voiceover("Ist es zwei Komma fünf,")]
#only("3")[#voiceover("oder ist es null Komma zwei fünf,")]
#only("4")[#voiceover("oder vielleicht fünfundzwanzig Komma null,")]
#only("5")[#voiceover("oder ist es null Komma null zwei fünf?")]
]

//Typ: MC 
#questionDef( 
questionText: "Was ist $\frac{25}{100}$ als Dezimalzahl?", 
answerOptions: ("$2.5$", "$0.25$", "$25.0$", "$0.025$"),
correctAnswerIndex: 1 
)