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
#only("1-")[Welchem Bruch entspricht $0.3$?]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) $3/1$]
// Antwortmöglichkeit a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) $3/10$]
// Antwortmöglichkeit b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) $1/3$]
// Antwortmöglichkeit c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) $3/100$]
// Antwortmöglichkeit d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns dein Wissen über die Umwandlung von Dezimalzahlen in Brüche testen. Welchem Bruch entspricht null Komma drei?")]
#only("2")[#voiceover("Ist es drei Eintel,")]
#only("3")[#voiceover("oder ist es drei Zehntel,")]
#only("4")[#voiceover("oder vielleicht ein Drittel,")]
#only("5")[#voiceover("oder ist es drei Hundertstel?")]
]

//Typ: MC 
#questionDef( 
questionText: "Welchem Bruch entspricht $0.3$?", 
answerOptions: ("$\frac{3}{1}$", "$\frac{3}{10}$", "$\frac{1}{3}$", "$\frac{3}{100}$"),
correctAnswerIndex: 1 
)