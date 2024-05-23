#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Linear Systems of Equations]
#v(40pt)
#only("1-")[Which of the following is an example of a linear system of equations? 🤔]
#v(40pt)
#only("2-")[a) $x + y = 2$, $2x - y = 3$]
#v(10pt)
#only("3-")[b) $x^2 + y^2 = 4$, $x - y = 1$]
#v(10pt)
#only("4-")[c) $x + y = 2$]
#v(10pt)
#only("5-")[d) $x^2 + y = 3$]
#only("1")[#voiceover("Let's test your understanding of linear systems of equations. Which of the following is an example of a linear system?")]
#only("2")[#voiceover("Is it option a) x plus y equals 2, and 2x minus y equals 3?")]
#only("3")[#voiceover("Or is it option b) x squared plus y squared equals 4, and x minus y equals 1?")]
#only("4")[#voiceover("Maybe it's option c) just the single equation x plus y equals 2?")]
#only("5")[#voiceover("Or finally, could it be option d) x squared plus y equals 3?")]
]#questionDef(
questionText: "Which of the following is an example of a linear system of equations?",
answerOptions: ("$x + y = 2$, $2x - y = 3$", "$x^2 + y^2 = 4$, x - y = 1$", "$x + y = 2$", "$x^2 + y = 3$"),
correctAnswerIndex: 0
)