#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Excellent work! You've correctly applied the chain rule to solve this problem. Let's go through the solution step-by-step to understand the process better.")
  ]

  #text(size: 30pt, weight: "bold")[Chain Rule Application]
  #v(40pt)

  #only("2-")[$ f(x) = (2x^2 + 3x + 1)^4 $]

  #only("2")[
    #voiceover("We start with the function f of x equals two x squared plus three x plus one, all raised to the power of four.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Chain Rule]
  #v(40pt)

  #only("1-")[$ (g(h(x)))' = g'(h(x)) dot h'(x) $]

  #only("1")[
    #voiceover("To differentiate this function, we'll use the chain rule. The chain rule states that the derivative of a composite function g of h of x is equal to g prime of h of x times h prime of x.")
  ]

  #v(20pt)

  #only("2-")[- Outer function: $ g(u) = u^4 $]
  #only("3-")[- Inner function: $ h(x) = 2x^2 + 3x + 1 $]

  #only("2")[
    #voiceover("In our case, the outer function g of u is u to the power of four,")
  ]

  #only("3")[
    #voiceover("and the inner function h of x is two x squared plus three x plus one.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Differentiating the Outer Function]
  #v(40pt)

  #only("1-")[$ g(u) = u^4 $]
  #only("2-")[$ g'(u) = 4u^3 $]

  #only("1")[
    #voiceover("Let's start by differentiating the outer function. We have g of u equals u to the power of four.")
  ]

  #only("2")[
    #voiceover("Using the power rule, we get g prime of u equals four times u cubed.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Differentiating the Inner Function]
  #v(40pt)

  #only("1-")[$ h(x) = 2x^2 + 3x + 1 $]
  #only("2-")[$ h'(x) = 4x + 3 $]

  #only("1")[
    #voiceover("Now, let's differentiate the inner function. We have h of x equals two x squared plus three x plus one.")
  ]

  #only("2")[
    #voiceover("Differentiating term by term, we get h prime of x equals four x plus three.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Applying the Chain Rule]
  #v(40pt)

  #only("1-")[$ f'(x) = g'(h(x)) dot h'(x) $]
  #only("2-")[$ f'(x) = 4(2x^2 + 3x + 1)^3 dot (4x + 3) $]

  #only("1")[
    #voiceover("Now we can apply the chain rule. The derivative of f of x is equal to g prime of h of x times h prime of x.")
  ]

  #only("2")[
    #voiceover("Substituting our results, we get f prime of x equals four times two x squared plus three x plus one, all cubed, times four x plus three.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)

  #only("1-")[$ f'(x) = 4(2x^2 + 3x + 1)^3 (4x + 3) $]

  #only("1")[
    #voiceover("And this is our final answer! The derivative of f of x equals four times two x squared plus three x plus one, all cubed, times four x plus three. Well done on solving this problem using the chain rule!")
  ]
]