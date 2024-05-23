#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Invertible Functions]
// The title "Invertible Functions" is shown on this slide
#v(40pt)
#only("1-")[Which of the following functions is invertible? 🤔]
// The question is shown from slide 1 onward
#v(40pt)
#only("2-")[a) $f(x) = x^2$]
// Answer option a) is shown from slide 2 onward
#v(10pt)
#only("3-")[b) $f(x) = e^x$]
// Answer option b) is shown from slide 3 onward
#v(10pt)
#only("4-")[c) $f(x) = sin(x)$]
// Answer option c) is shown from slide 4 onward
#v(10pt)
#only("5-")[d) $f(x) = log(x)$]
// Answer option d) is shown from slide 5 onward
#only("1")[#voiceover("Let's test your knowledge on invertible functions. Which of the following functions is invertible?")]
#only("2")[#voiceover("Is it the function f of x equals x squared,")]
#only("3")[#voiceover("or is it the function f of x equals e to the power of x,")]
#only("4")[#voiceover("or maybe the function f of x equals sine of x,")]
#only("5")[#voiceover("or is it the function f of x equals log of x?")]
]#questionDef(
questionText: "Which of the following functions is invertible?", 
answerOptions: ("$f(x) = x^2$", "$f(x) = e^x$", "$f(x) = \sin(x)$", "$f(x) = \log(x)$"),
correctAnswerIndex: -1,
)