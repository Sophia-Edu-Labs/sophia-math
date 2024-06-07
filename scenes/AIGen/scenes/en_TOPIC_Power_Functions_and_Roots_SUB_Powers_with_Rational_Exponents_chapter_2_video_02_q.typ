#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Simplifying Rational Exponents]
#v(40pt)
#only("1-")[Simplify the expression: $4^(1/2) 4^(1/2)$]
#v(40pt)
#only("2-")[a) 2]
#v(10pt)
#only("3-")[b) 4]
#v(10pt)
#only("4-")[c) 8]
#v(10pt)
#only("5-")[d) 16]

#only("1")[#voiceover("Let's practice simplifying expressions with rational exponents. Simplify the expression 4 to the power of one-half times 4 to the power of one-half.")]
#only("2")[#voiceover("Is the result 2,")]
#only("3")[#voiceover("or is it 4,")]
#only("4")[#voiceover("maybe 8,")]
#only("5")[#voiceover("or could it be 16?")]
]#questionDef(
questionText: "Simplify the expression $4^{(1/2)} \cdot 4^{(1/2)}$.",
answerOptions: ("$2$", "$4$", "$8$", "$16$"),
correctAnswerIndex: 1,
)