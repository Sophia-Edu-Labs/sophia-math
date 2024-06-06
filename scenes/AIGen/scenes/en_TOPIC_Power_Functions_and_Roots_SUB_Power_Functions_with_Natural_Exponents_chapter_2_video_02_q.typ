#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Even Power Functions 🔢]
#v(40pt)
#only("1-")[Which of the following is an #text(weight: "bold")[even] power function?]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) $f(x) = x^3$]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) $f(x) = x^5$]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) $f(x) = x^2$]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) $f(x) = x^7$]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on even power functions. Which of the following is an even power function?")]
#only("2")[#voiceover("Is it f of x equals x cubed,")]
#only("3")[#voiceover("or is it f of x equals x to the fifth power,")]
#only("4")[#voiceover("or maybe f of x equals x squared,")]
#only("5")[#voiceover("or is it f of x equals x to the seventh power?")]
]#questionDef(
questionText: "Which of the following is an even power function?",
answerOptions: ("$f(x) = x^3$", "$f(x) = x^5$", "$f(x) = x^2$", "$f(x) = x^7$"),
correctAnswerIndex: 2
)