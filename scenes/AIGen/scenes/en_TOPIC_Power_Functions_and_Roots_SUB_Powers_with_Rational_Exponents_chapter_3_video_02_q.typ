#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Adding Expressions with Rational Exponents]
#v(40pt)
#only("1-")[Simplify the following expression:]
#v(20pt)
#only("2-")[$3 2^(1/2) + 2 2^(1/2)$]
#v(40pt)
#only("3-")[What is the result?]
#v(20pt)
#only("4-")[a) $5 2^(1/2)$]
#v(10pt)
#only("5-")[b) $6 2^(1/2)$]
#v(10pt)
#only("6-")[c) $4 2^(1/2)$]
#v(10pt)
#only("7-")[d) $5$]
#only("1")[#voiceover("Let's practice simplifying expressions with rational exponents.")]
#only("2")[#voiceover("We have the expression 3 times 2 to the power of one half plus 2 times 2 to the power of one half.")]
#only("3")[#voiceover("What do you think is the simplified result of this expression?")]
#only("4")[#voiceover("Is it 5 times 2 to the power of one half,")]
#only("5")[#voiceover("or is it 6 times 2 to the power of one half,")]
#only("6")[#voiceover("or maybe 4 times 2 to the power of one half,")]
#only("7")[#voiceover("or simply 5?")]
]#questionDef(
questionText: "Simplify $3 \cdot 2^{1/2} + 2 \cdot 2^{1/2}$.",
answerOptions: ("$5 \cdot 2^{1/2}$", "$6 \cdot 2^{1/2}$", "$4 \cdot 2^{1/2}$", "$5$"),
correctAnswerIndex: 0,
)