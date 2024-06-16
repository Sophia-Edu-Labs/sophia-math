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
#only("1-")[Was ist $3/4$ als Dezimalzahl?]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) $0.34$]
// Antwortmöglichkeit a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) $0.43$]
// Antwortmöglichkeit b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) $0.75$]
// Antwortmöglichkeit c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) $0.57$]
// Antwortmöglichkeit d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns dein Wissen über die Umwandlung von Brüchen in Dezimalzahlen testen. Was ist drei Viertel als Dezimalzahl?")]
#only("2")[#voiceover("Ist es null Komma drei vier,")]
#only("3")[#voiceover("oder ist es null Komma vier drei,")]
#only("4")[#voiceover("oder vielleicht null Komma sieben fünf,")]
#only("5")[#voiceover("oder ist es null Komma fünf sieben?")]
]

//Typ: MC 
#questionDef( 
questionText: "Was ist $\frac{3}{4}$ als Dezimalzahl?", 
answerOptions: ("$0.34$", "$0.43$", "$0.75$", "$0.57$"),
correctAnswerIndex: 2 
)