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
#only("1-")[Was ist $1/2$ als Dezimalzahl?]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) $0.2$]
// Antwortmöglichkeit a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) $0.5$]
// Antwortmöglichkeit b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) $2.0$]
// Antwortmöglichkeit c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) $5.0$]
// Antwortmöglichkeit d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns dein Wissen über die Umwandlung von Brüchen in Dezimalzahlen testen. Was ist ein halb als Dezimalzahl?")]
#only("2")[#voiceover("Ist es null Komma zwei,")]
#only("3")[#voiceover("oder ist es null Komma fünf,")]
#only("4")[#voiceover("oder vielleicht zwei Komma null,")]
#only("5")[#voiceover("oder ist es fünf Komma null?")]
]

//Typ: MC 
#questionDef( 
questionText: "Was ist $\frac{1}{2}$ als Dezimalzahl?", 
answerOptions: ("$0.2$", "$0.5$", "$2.0$", "$5.0$"),
correctAnswerIndex: 1
)