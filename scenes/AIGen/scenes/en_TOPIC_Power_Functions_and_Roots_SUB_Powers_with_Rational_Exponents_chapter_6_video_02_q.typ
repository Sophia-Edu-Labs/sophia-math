#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Simplifying Rational Exponents]
// The title "Simplifying Rational Exponents" is shown on this slide
#v(40pt)
#only("1-")[Simplify $(2^(1/2))^2$.]
// The expression to simplify is shown from slide 1 onward
#v(40pt)
#only("2-")[a) 2]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) 4]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) 8]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) 16]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's practice simplifying expressions with rational exponents. Simplify the expression 2 to the power of one-half, all squared.")]
#only("2")[#voiceover("Is the result 2,")]
#only("3")[#voiceover("or is it 4,")]
#only("4")[#voiceover("maybe 8,")]
#only("5")[#voiceover("or could it be 16?")]
]#questionDef(
questionText: "Simplify $(2^{(1/2)})^2$.",
answerOptions: ("2", "4", "8", "16"),
correctAnswerIndex: 0,
)