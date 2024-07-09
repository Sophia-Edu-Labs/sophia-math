#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Degree of a Quadratic Equation]
  #v(40pt)

  #only("1-")[Consider the quadratic equation:]
  #v(20pt)
  #only("2-")[#align(center)[$ 3x^2 - 4x + 2 = 0 $]]
  #v(40pt)

  #only("3-")[What is the degree of this equation?]
  #v(20pt)
  #only("4-")[a) 1]
  #v(10pt)
  #only("5-")[b) 2]
  #v(10pt)
  #only("6-")[c) 3]

  #only("1")[#voiceover("Let's explore a question about the degree of a quadratic equation.")]
  #only("2")[#voiceover("Consider the equation: three x squared minus four x plus two equals zero.")]
  #only("3")[#voiceover("Now, what is the degree of this equation?")]
  #only("4")[#voiceover("Is it 1?")]
  #only("5")[#voiceover("Or is it 2?")]
  #only("6")[#voiceover("Or perhaps 3?")]
]

//Type: MC 
#questionDef( 
questionText: "What is the degree of the quadratic equation $3x^2 - 4x + 2 = 0$?", 
answerOptions: ("$1$", "$2$", "$3$"),
correctAnswerIndex: 1 
)