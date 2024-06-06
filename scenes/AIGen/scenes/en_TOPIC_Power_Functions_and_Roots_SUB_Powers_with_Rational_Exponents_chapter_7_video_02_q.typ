#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Solving Equations with Rational Exponents]
#v(40pt)
#only("1-")[Solve: $x^(1/2) = 4$]
#v(40pt)
#only("2-")[a) $2$]
#v(10pt)
#only("3-")[b) $4$]
#v(10pt)
#only("4-")[c) $8$]
#v(10pt)
#only("5-")[d) $16$]
#only("1")[#voiceover("Let's practice solving an equation with a rational exponent. Solve the equation x to the power of one-half equals four.")]
#only("2")[#voiceover("Is the solution x equals two,")]
#only("3")[#voiceover("or is it x equals four,")]
#only("4")[#voiceover("or maybe x equals eight,")]
#only("5")[#voiceover("or is the solution x equals sixteen?")]
]#questionDef(
questionText: "Solve $x^{1/2} = 4$.",
answerOptions: ("2", "4", "8", "16"),
correctAnswerIndex: 3
)