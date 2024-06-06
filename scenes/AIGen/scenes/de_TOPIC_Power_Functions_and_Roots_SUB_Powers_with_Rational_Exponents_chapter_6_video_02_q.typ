#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Vereinfachung von rationalen Exponenten]
// Der Titel "Vereinfachung von rationalen Exponenten" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Vereinfache $(2^(1/2))^2$.]
// Der zu vereinfachende Ausdruck wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) 2]
// Antwortmöglichkeit a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) 4]
// Antwortmöglichkeit b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) 8]
// Antwortmöglichkeit c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) 16]
// Antwortmöglichkeit d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns das Vereinfachen von Ausdrücken mit rationalen Exponenten üben. Vereinfache den Ausdruck 2 hoch ein Halb, alles zum Quadrat.")]
#only("2")[#voiceover("Ist das Ergebnis 2,")]
#only("3")[#voiceover("oder ist es 4,")]
#only("4")[#voiceover("vielleicht 8,")]
#only("5")[#voiceover("oder könnte es 16 sein?")]
]#questionDef(
questionText: "Vereinfache $(2^{(1/2)})^2$.",
answerOptions: ("2", "4", "8", "16"),
correctAnswerIndex: 0,
)