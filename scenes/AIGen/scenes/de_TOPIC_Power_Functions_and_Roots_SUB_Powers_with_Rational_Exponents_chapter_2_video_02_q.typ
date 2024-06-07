#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Rationale Exponenten vereinfachen]
#v(40pt)
#only("1-")[Vereinfache den Ausdruck: $4^(1/2) 4^(1/2)$]
#v(40pt)
#only("2-")[a) 2]
#v(10pt)
#only("3-")[b) 4]
#v(10pt)
#only("4-")[c) 8]
#v(10pt)
#only("5-")[d) 16]

#only("1")[#voiceover("Lass uns das Vereinfachen von Ausdrücken mit rationalen Exponenten üben. Vereinfache den Ausdruck 4 hoch ein Halb mal 4 hoch ein Halb.")]
#only("2")[#voiceover("Ist das Ergebnis 2,")]
#only("3")[#voiceover("oder ist es 4,")]
#only("4")[#voiceover("vielleicht 8,")]
#only("5")[#voiceover("oder könnte es 16 sein?")]
]#questionDef(
questionText: "Vereinfache den Ausdruck $4^{(1/2)} \cdot 4^{(1/2)}$.",
answerOptions: ("$2$", "$4$", "$8$", "$16$"),
correctAnswerIndex: 1,
)