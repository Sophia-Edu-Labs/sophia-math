#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Combining Differentiation Rules]
  #v(40pt)

  #only("1-")[
    Given the function:
    $ f(x) = x^2 (3x^2 + 2x + 1)^5 $
  ]

  #v(20pt)

  #only("2-")[
    Which rules do we need to use to differentiate this function?
  ]

  #v(20pt)

  #only("3-")[a) Chain rule only]
  #v(10pt)
  #only("4-")[b) Product rule only]
  #v(10pt)
  #only("5-")[c) Both chain rule and product rule]
  #v(10pt)
  #only("6-")[d) Neither]

  #only("1")[
    #voiceover("Let's consider the following function: f of x equals x squared times the quantity 3x squared plus 2x plus 1, all raised to the power of 5.")
  ]

  #only("2")[
    #voiceover("To differentiate this function, which rules do we need to apply?")
  ]

  #only("3")[
    #voiceover("Is it the chain rule only?")
  ]

  #only("4")[
    #voiceover("Or do we only need the product rule?")
  ]

  #only("5")[
    #voiceover("Perhaps we need to use both the chain rule and the product rule?")
  ]

  #only("6")[
    #voiceover("Or maybe we don't need either of these rules?")
  ]
]

//Type: MC 
#questionDef( 
questionText: "When differentiating $f(x) = x^2 (3x^2 + 2x + 1)^5$, which rules do we need to use?", 
answerOptions: ("Chain rule only", "Product rule only", "Both chain rule and product rule", "Neither"),
correctAnswerIndex: 2 
)