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
#only("1-")[Welcher Bruch entspricht $0.5$?]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) $1/5$]
// Antwortmöglichkeit a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) $5/1$]
// Antwortmöglichkeit b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) $5/10$]
// Antwortmöglichkeit c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) $5/100$]
// Antwortmöglichkeit d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns dein Wissen über die Umwandlung von Dezimalzahlen in Brüche testen. Welcher Bruch entspricht null Komma fünf?")]
#only("2")[#voiceover("Ist es ein Fünftel,")]
#only("3")[#voiceover("oder ist es fünf durch eins,")]
#only("4")[#voiceover("oder vielleicht fünf durch zehn,")]
#only("5")[#voiceover("oder ist es fünf durch hundert?")]
]

//Typ: MC 
#questionDef( 
questionText: "Welcher Bruch entspricht $0.5$?", 
answerOptions: ("$\frac{1}{5}$", "$\frac{5}{1}$", "$\frac{5}{10}$", "$\frac{5}{100}$"),
correctAnswerIndex: 2 
)