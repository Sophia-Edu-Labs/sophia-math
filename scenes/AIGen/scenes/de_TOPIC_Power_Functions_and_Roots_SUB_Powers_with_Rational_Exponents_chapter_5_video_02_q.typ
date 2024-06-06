#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Rationale Exponenten vereinfachen]
#v(40pt)
#only("1-")[Vereinfache: $(4/9)^(1/2)$]
#v(40pt)
#only("2-")[a) $2/3$]
#v(10pt)
#only("3-")[b) $4/9$]
#v(10pt)  
#only("4-")[c) $1/2$]
#v(10pt)
#only("5-")[d) $3/2$]

#only("1")[#voiceover("Lass uns üben, Ausdrücke mit rationalen Exponenten zu vereinfachen. Vereinfache den Ausdruck vier Neuntel hoch ein Halb.")]
#only("2")[#voiceover("Ist die vereinfachte Form zwei Drittel,")]
#only("3")[#voiceover("oder ist es vier Neuntel,")]
#only("4")[#voiceover("oder vielleicht ein Halb,")]
#only("5")[#voiceover("oder ist es drei Halbe?")]
]#questionDef(
questionText: "Vereinfache: $(\frac{4}{9})^{\frac{1}{2}}$",
answerOptions: ("$\frac{2}{3}$", "$\frac{4}{9}$", "$\frac{1}{2}$", "$\frac{3}{2}$"),
correctAnswerIndex: 0
)