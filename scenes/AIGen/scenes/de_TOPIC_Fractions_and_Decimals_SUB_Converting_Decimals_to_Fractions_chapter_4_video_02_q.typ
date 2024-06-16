#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Umwandlung von Dezimalzahlen in Brüche]
// Der Titel "Umwandlung von Dezimalzahlen in Brüche" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Welcher Bruch entspricht $0.05$?]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) $5/1000$]
// Antwortmöglichkeit a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) $5/100$]
// Antwortmöglichkeit b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) $5/10$]
// Antwortmöglichkeit c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) $5/1$]
// Antwortmöglichkeit d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns dein Wissen über die Umwandlung von Dezimalzahlen mit führenden Nullen in Brüche testen. Welcher Bruch entspricht null Komma null fünf?")]
#only("2")[#voiceover("Ist es fünf über eintausend,")]
#only("3")[#voiceover("oder ist es fünf über hundert,")]
#only("4")[#voiceover("oder vielleicht fünf über zehn,")]
#only("5")[#voiceover("oder ist es fünf über eins?")]
]

//Typ: MC 
#questionDef( 
questionText: "Welcher Bruch entspricht $0.05$?", 
answerOptions: ("$\frac{5}{1000}$", "$\frac{5}{100}$", "$\frac{5}{10}$", "$\frac{5}{1}$"),
correctAnswerIndex: 1 
)