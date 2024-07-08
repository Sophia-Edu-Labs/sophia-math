#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Let's consider the following function:")
  ]

  #text(size: 30pt, weight: "bold")[Product Rule Application]

  #v(40pt)

  #only("2-")[
    #text()[$ f(x) = x^3 cos(x) $]
  ]

  #v(40pt)

  #only("3-")[
    Can you differentiate this function using the product rule?
  ]

  #only("2")[
    #voiceover("f of x equals x cubed times cosine of x.")
  ]

  #only("3")[
    #voiceover("Your task is to differentiate this function using the product rule. Remember to apply the rule step by step and be careful with the trigonometric function.")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Differentiate $f(x) = x^3 \, \cos(x)$ using the product rule.", 
answerOptions: ("Using the product rule, we have $f'(x) = \frac{d}{dx} [x^3 \, \cos(x)] = x^3 \frac{d}{dx} [\cos(x)] + \cos(x) \frac{d}{dx} [x^3] = x^3 (-\sin(x)) + \cos(x) (3x^2) = -x^3 \sin(x) + 3x^2 \cos(x)$.", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)