#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Continuity Question]
// The title "Continuity Question" is shown on this slide
#v(40pt)
#only("1-")[Is $f(x) = x^2$ continuous at $x = 2$?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) yes]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) no]
// Answer option b) is shown from slide 3 onward
#only("1")[#voiceover("Let's test your understanding of continuity. Consider the function f of x equals x squared. Is this function continuous at x equals 2?")]
#only("2")[#voiceover("Is the answer yes,")]
#only("3")[#voiceover("or is it no?")]
]#questionDef(
questionText: "Is $f(x) = x^2$ continuous at $x = 2$?",
answerOptions: ("yes", "no"),
correctAnswerIndex: 0
)