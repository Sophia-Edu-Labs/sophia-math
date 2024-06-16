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
#only("1-")[Was ist $9/10$ als Dezimalzahl?]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) $0.9$]
// Antwortmöglichkeit a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) $9.0$]
// Antwortmöglichkeit b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) $0.09$]
// Antwortmöglichkeit c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) $90$]
// Antwortmöglichkeit d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns dein Wissen über die Umwandlung von Brüchen in Dezimalzahlen testen. Was ist neun Zehntel als Dezimalzahl?")]
#only("2")[#voiceover("Ist es null Komma neun,")]
#only("3")[#voiceover("oder ist es neun Komma null,")]
#only("4")[#voiceover("oder vielleicht null Komma null neun,")]
#only("5")[#voiceover("oder ist es neunzig?")]
]

//Typ: MC 
#questionDef( 
questionText: "Was ist $\frac{9}{10}$ als Dezimalzahl?", 
answerOptions: ("$0.9$", "$9.0$", "$0.09$", "$90$"),
correctAnswerIndex: 0 
)