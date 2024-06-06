#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Addition von Ausdrücken mit rationalen Exponenten]
#v(40pt)
#only("1-")[Vereinfache den folgenden Ausdruck:]
#v(20pt)
#only("2-")[$3 2^(1/2) + 2 2^(1/2)$]
#v(40pt)
#only("3-")[Was ist das Ergebnis?]
#v(20pt)
#only("4-")[a) $5 2^(1/2)$]
#v(10pt)
#only("5-")[b) $6 2^(1/2)$]
#v(10pt)
#only("6-")[c) $4 2^(1/2)$]
#v(10pt)
#only("7-")[d) $5$]
#only("1")[#voiceover("Lass uns üben, Ausdrücke mit rationalen Exponenten zu vereinfachen.")]
#only("2")[#voiceover("Wir haben den Ausdruck 3 mal 2 hoch ein Halb plus 2 mal 2 hoch ein Halb.")]
#only("3")[#voiceover("Was denkst du, ist das vereinfachte Ergebnis dieses Ausdrucks?")]
#only("4")[#voiceover("Ist es 5 mal 2 hoch ein Halb,")]
#only("5")[#voiceover("oder ist es 6 mal 2 hoch ein Halb,")]
#only("6")[#voiceover("oder vielleicht 4 mal 2 hoch ein Halb,")]
#only("7")[#voiceover("oder einfach 5?")]
]#questionDef(
questionText: "Vereinfache $3 \cdot 2^{1/2} + 2 \cdot 2^{1/2}$.",
answerOptions: ("$5 \cdot 2^{1/2}$", "$6 \cdot 2^{1/2}$", "$4 \cdot 2^{1/2}$", "$5$"),
correctAnswerIndex: 0,
)