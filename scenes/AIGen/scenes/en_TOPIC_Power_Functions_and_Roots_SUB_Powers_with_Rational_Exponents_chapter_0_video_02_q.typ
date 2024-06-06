#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Rational Exponents]
// The title "Rational Exponents" is shown on this slide
#v(40pt)
#only("1-")[What does $a^(1/2)$ represent?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) $a$ squared]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) $a$ cubed]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) the square root of $a$]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) the cube root of $a$]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your understanding of rational exponents. What does a to the power of one half represent?")]
#only("2")[#voiceover("Is it a squared,")]
#only("3")[#voiceover("or is it a cubed,")]
#only("4")[#voiceover("or maybe the square root of a,")]
#only("5")[#voiceover("or is it the cube root of a?")]
]#questionDef(
questionText: "What does $a^{1/2}$ represent?",
answerOptions: ("$a$ squared", "$a$ cubed", "the square root of $a$", "the cube root of $a$"),
correctAnswerIndex: 2,
)