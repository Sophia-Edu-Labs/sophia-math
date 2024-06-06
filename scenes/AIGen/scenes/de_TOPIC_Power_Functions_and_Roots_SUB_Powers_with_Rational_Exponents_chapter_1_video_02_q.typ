#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Vereinfachung von rationalen Exponenten]
#v(40pt)
#only("1-")[Vereinfache $16^(1/4)$.]
#v(40pt)
#only("2-")[a) 2]
#v(10pt)
#only("3-")[b) 4]
#v(10pt)
#only("4-")[c) 8]
#v(10pt)
#only("5-")[d) 16]
#only("1")[#voiceover("Lass uns üben, Ausdrücke mit rationalen Exponenten zu vereinfachen. Vereinfache 16 hoch ein Viertel.")]
#only("2")[#voiceover("Ist das Ergebnis 2,")]
#only("3")[#voiceover("oder ist es 4,")]
#only("4")[#voiceover("oder vielleicht 8,")]
#only("5")[#voiceover("oder ist es 16?")]
]#questionDef(
questionText: "Vereinfache $16^{1/4}$.",
answerOptions: ("$2$", "$4$", "$8$", "$16$"),
correctAnswerIndex: 0,
)