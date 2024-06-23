#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Umwandlung von Brüchen in Dezimalzahlen]
// Der Titel "Umwandlung von Brüchen in Dezimalzahlen" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Was ist $5/8$ als Dezimalzahl?]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) $0.625$]
// Antwortmöglichkeit a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) $0.62$]
// Antwortmöglichkeit b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) $0.65$]
// Antwortmöglichkeit c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) $0.6$]
// Antwortmöglichkeit d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns dein Wissen über die Umwandlung von Brüchen in Dezimalzahlen testen. Was ist fünf Achtel als Dezimalzahl?")]
#only("2")[#voiceover("Ist es null Komma sechs zwei fünf,")]
#only("3")[#voiceover("oder ist es null Komma sechs zwei,")]
#only("4")[#voiceover("oder vielleicht null Komma sechs fünf,")]
#only("5")[#voiceover("oder ist es null Komma sechs?")]
]

//Typ: MC 
#questionDef( 
questionText: "Was ist $\frac{5}{8}$ als Dezimalzahl?", 
answerOptions: ("$0.625$", "$0.62$", "$0.65$", "$0.6$"),
correctAnswerIndex: 0 
)