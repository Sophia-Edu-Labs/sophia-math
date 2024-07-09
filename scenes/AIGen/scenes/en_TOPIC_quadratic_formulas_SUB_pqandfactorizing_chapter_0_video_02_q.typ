#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Identifying Quadratic Equations]
#v(40pt)

#only("1-")[Which of the following is a quadratic equation?]
#v(20pt)

#only("2-")[a) $2x + 3 = 0$]
#v(10pt)
#only("3-")[b) $x^2 + 5x + 6 = 0$]
#v(10pt)
#only("4-")[c) $3x^3 - 2x^2 + 1 = 0$]

#only("1")[#voiceover("Let's test your understanding of quadratic equations. We're going to look at three different equations, and your task is to identify which one is quadratic.")]

#only("2")[#voiceover("First, we have the equation 2x plus 3 equals 0.")]

#only("3")[#voiceover("Next, we have x squared plus 5x plus 6 equals 0.")]

#only("4")[#voiceover("And finally, we have 3x cubed minus 2x squared plus 1 equals 0.")]
]

//Type: MC 
#questionDef( 
questionText: "Which of the following is a quadratic equation?", 
answerOptions: ("$2x + 3 = 0$", "$x^2 + 5x + 6 = 0$", "$3x^3 - 2x^2 + 1 = 0$"),
correctAnswerIndex: 1 
)