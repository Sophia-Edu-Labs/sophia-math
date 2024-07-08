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

  #only("2-")[#text()[$ f(x) = x^2 sin(x) $]]
  #v(20pt)

  #only("3-")[Use the product rule to find $f'(x)$.]

  #only("2")[
    #voiceover("f of x equals x squared times sine of x.")
  ]

  #only("3")[
    #voiceover("Your task is to use the product rule to find the derivative of this function. What is f prime of x?")
  ]
]

//Type: FREE 
#questionDef( 
questionText: "Use the product rule to differentiate $f(x) = x^2 \, \sin(x)$.", 
answerOptions: ("Using the product rule, $f'(x) = \frac{d}{dx}[x^2] \cdot \sin(x) + x^2 \cdot \frac{d}{dx}[\sin(x)] = 2x \cdot \sin(x) + x^2 \cdot \cos(x)$. Therefore, $f'(x) = 2x \sin(x) + x^2 \cos(x)$.", "The answer is incorrect."),
correctAnswerIndex: 0, //always 0 
llmCheckDetails: ( 
fallbackOptionIndex: 1 //always 1 
), 
)