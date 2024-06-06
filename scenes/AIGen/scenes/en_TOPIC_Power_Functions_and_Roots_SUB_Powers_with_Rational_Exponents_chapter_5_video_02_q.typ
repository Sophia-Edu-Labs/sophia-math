#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Simplify Rational Exponents]
#v(40pt)
#only("1-")[Simplify: $(4/9)^(1/2)$]
#v(40pt)
#only("2-")[a) $2/3$]
#v(10pt)
#only("3-")[b) $4/9$]
#v(10pt)  
#only("4-")[c) $1/2$]
#v(10pt)
#only("5-")[d) $3/2$]

#only("1")[#voiceover("Let's practice simplifying expressions with rational exponents. Simplify the expression four ninths raised to the power of one half.")]
#only("2")[#voiceover("Is the simplified form two thirds,")]
#only("3")[#voiceover("or is it four ninths,")]
#only("4")[#voiceover("or maybe one half,")]
#only("5")[#voiceover("or is it three halves?")]
]#questionDef(
questionText: "Simplify: $(\frac{4}{9})^{\frac{1}{2}}$",
answerOptions: ("$\frac{2}{3}$", "$\frac{4}{9}$", "$\frac{1}{2}$", "$\frac{3}{2}$"),
correctAnswerIndex: 0
)