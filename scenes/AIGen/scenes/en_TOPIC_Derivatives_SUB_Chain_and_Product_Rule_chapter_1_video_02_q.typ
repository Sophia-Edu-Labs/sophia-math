#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Product Rule Application]
  #v(40pt)

  #only("1-")[The product rule is used to differentiate which type of functions?]
  #v(20pt)

  #only("2-")[a) Sum of functions]
  #v(10pt)
  #only("3-")[b) Difference of functions]
  #v(10pt)
  #only("4-")[c) Product of functions]
  #v(10pt)
  #only("5-")[d) Quotient of functions]

  #only("1")[
    #voiceover("Let's test your understanding of the product rule. The question is: The product rule is used to differentiate which type of functions?")
  ]
  #only("2")[
    #voiceover("Is it used for the sum of functions?")
  ]
  #only("3")[
    #voiceover("Or is it used for the difference of functions?")
  ]
  #only("4")[
    #voiceover("Perhaps it's used for the product of functions?")
  ]
  #only("5")[
    #voiceover("Or maybe it's used for the quotient of functions?")
  ]
]

//Type: MC 
#questionDef( 
questionText: "The product rule is used to differentiate which type of functions?", 
answerOptions: ("Sum of functions", "Difference of functions", "Product of functions", "Quotient of functions"),
correctAnswerIndex: 2 
)