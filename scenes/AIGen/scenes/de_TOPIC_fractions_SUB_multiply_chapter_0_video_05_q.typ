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
#only("1-")[8) Übung (MC): Multipliziere $6$ mit $5/6$]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) $5/6$]
// Antwortmöglichkeit a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) $10/6$]
// Antwortmöglichkeit b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) $15/6$]
// Antwortmöglichkeit c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) $30/6$]
// Antwortmöglichkeit d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns dein Wissen über das Multiplizieren von Brüchen testen. Hier ist die Übung: Multipliziere 6 mit 5 Sechstel.")]
#only("2")[#voiceover("Ist das Ergebnis 5 Sechstel,")]
#only("3")[#voiceover("oder ist es 10 Sechstel,")]
#only("4")[#voiceover("oder vielleicht 15 Sechstel,")]
#only("5")[#voiceover("oder ist es 30 Sechstel?")]
]#questionDef( 
questionText: "Multiplizieren Sie $6$ mit $\frac{5}{6}$.", 
answerOptions: ("$\frac{5}{6}$", "$\frac{10}{6}$", "$\frac{15}{6}$", "$\frac{30}{6}$"),
correctAnswerIndex: 3 
)