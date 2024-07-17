#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Brüche multiplizieren]
// Der Titel "Brüche multiplizieren" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Was ist das Ergebnis von $4$ multipliziert mit $2/3$?]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) $4/3$]
// Antwortmöglichkeit a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) $6/3$]
// Antwortmöglichkeit b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) $8/3$]
// Antwortmöglichkeit c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) $10/3$]
// Antwortmöglichkeit d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns dein Wissen über das Multiplizieren von Brüchen testen. Was ist das Ergebnis von 4 multipliziert mit zwei Dritteln?")]
#only("2")[#voiceover("Ist es vier Drittel,")]
#only("3")[#voiceover("oder sind es sechs Drittel,")]
#only("4")[#voiceover("oder vielleicht acht Drittel,")]
#only("5")[#voiceover("oder sind es zehn Drittel?")]
]#questionDef( 
questionText: "Multiplizieren Sie $4$ mit $\frac{2}{3}$.", 
answerOptions: ("$\frac{4}{3}$", "$\frac{6}{3}$", "$\frac{8}{3}$", "$\frac{10}{3}$"),
correctAnswerIndex: 2 
)