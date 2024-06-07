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
#only("1-")[Simplify: $(-8)^(1/3)$]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) 2]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) -2]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) 4]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) -4]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's practice simplifying expressions with rational exponents. What is the simplified form of negative 8 raised to the power of one-third?")]
#only("2")[#voiceover("Is it 2,")]
#only("3")[#voiceover("or is it negative 2,")]
#only("4")[#voiceover("or maybe 4,")]
#only("5")[#voiceover("or is it negative 4?")]
]#questionDef(
questionText: "Simplify $(-8)^{1/3}$.",
answerOptions: ("$2$", "$-2$", "$4$", "$-4$"),
correctAnswerIndex: 1,
)