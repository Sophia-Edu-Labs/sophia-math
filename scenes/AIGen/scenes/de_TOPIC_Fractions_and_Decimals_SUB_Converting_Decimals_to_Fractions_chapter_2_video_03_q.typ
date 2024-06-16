#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Dezimalzahlen in Brüche umwandeln]
// Der Titel "Dezimalzahlen in Brüche umwandeln" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[In welchen Bruch lässt sich $0.75$ umwandeln?]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) $75/10$]
// Antwortmöglichkeit a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) $75/100$]
// Antwortmöglichkeit b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) $7.5/100$]
// Antwortmöglichkeit c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) $7.5/10$]
// Antwortmöglichkeit d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns dein Wissen über das Umwandeln von Dezimalzahlen in Brüche testen. In welchen Bruch lässt sich null Komma sieben fünf umwandeln?")]
#only("2")[#voiceover("Ist es fünfundsiebzig Zehntel,")]
#only("3")[#voiceover("oder ist es fünfundsiebzig Hundertstel,")]
#only("4")[#voiceover("oder vielleicht sieben Komma fünf Hundertstel,")]
#only("5")[#voiceover("oder ist es sieben Komma fünf Zehntel?")]
]

//Typ: MC 
#questionDef( 
questionText: "In welchen Bruch lässt sich $0.75$ umwandeln?", 
answerOptions: ("$\frac{75}{10}$", "$\frac{75}{100}$", "$\frac{7.5}{100}$", "$\frac{7.5}{10}$"),
correctAnswerIndex: 1 
)