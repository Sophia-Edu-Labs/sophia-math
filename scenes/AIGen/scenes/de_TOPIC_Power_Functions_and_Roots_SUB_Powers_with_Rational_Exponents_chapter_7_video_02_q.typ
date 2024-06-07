#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Gleichungen mit rationalen Exponenten lösen]
#v(40pt)
#only("1-")[Löse: $x^(1/2) = 4$]
#v(40pt)
#only("2-")[a) $2$]
#v(10pt)
#only("3-")[b) $4$]
#v(10pt)
#only("4-")[c) $8$]
#v(10pt)
#only("5-")[d) $16$]
#only("1")[#voiceover("Lass uns üben, eine Gleichung mit einem rationalen Exponenten zu lösen. Löse die Gleichung x hoch ein Halb gleich vier.")]
#only("2")[#voiceover("Ist die Lösung x gleich zwei,")]
#only("3")[#voiceover("oder ist es x gleich vier,")]
#only("4")[#voiceover("oder vielleicht x gleich acht,")]
#only("5")[#voiceover("oder ist die Lösung x gleich sechzehn?")]
]#questionDef(
questionText: "Löse $x^{1/2} = 4$.",
answerOptions: ("$2$", "$4$", "$8$", "$16$"),
correctAnswerIndex: 3
)