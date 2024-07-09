#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Quadratic Equation Graphs]
#v(40pt)

#only("1-")[Which of the following represents a quadratic equation graphically?]
#v(20pt)

#only("2-")[a) A straight line]
#v(10pt)
#only("3-")[b) A parabola]
#v(10pt)
#only("4-")[c) A hyperbola]

#only("1")[#voiceover("Let's test your understanding of quadratic equations. We're going to look at their graphical representation.")]

#only("2")[#voiceover("Is a quadratic equation represented by a straight line?")]

#only("3")[#voiceover("Or is it represented by a parabola?")]

#only("4")[#voiceover("Or perhaps, is it represented by a hyperbola?")]
]

//Type: MC 
#questionDef( 
questionText: "Which of the following represents a quadratic equation graphically?", 
answerOptions: ("A straight line", "A parabola", "A hyperbola"),
correctAnswerIndex: 1 
)