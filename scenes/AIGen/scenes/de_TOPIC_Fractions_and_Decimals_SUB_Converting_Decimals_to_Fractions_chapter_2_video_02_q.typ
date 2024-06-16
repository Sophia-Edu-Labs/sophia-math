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
#only("1-")[Welchem Bruch entspricht $0.25$?]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) $25/100$]
// Antwortmöglichkeit a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) $2.5/10$]
// Antwortmöglichkeit b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) $1/25$]
// Antwortmöglichkeit c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) $2.5/100$]
// Antwortmöglichkeit d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns dein Wissen über die Umwandlung von Dezimalzahlen in Brüche testen. Welchem Bruch entspricht null Komma zwei fünf?")]
#only("2")[#voiceover("Ist es fünfundzwanzig Hundertstel,")]
#only("3")[#voiceover("oder ist es zwei Komma fünf Zehntel,")]
#only("4")[#voiceover("oder vielleicht ein Fünfundzwanzigstel,")]
#only("5")[#voiceover("oder ist es zwei Komma fünf Hundertstel?")]
]

//Typ: MC 
#questionDef( 
questionText: "Welchem Bruch entspricht $0.25$?", 
answerOptions: ("$\frac{25}{100}$", "$\frac{2.5}{10}$", "$\frac{1}{25}$", "$\frac{2.5}{100}$"),
correctAnswerIndex: 0 
)