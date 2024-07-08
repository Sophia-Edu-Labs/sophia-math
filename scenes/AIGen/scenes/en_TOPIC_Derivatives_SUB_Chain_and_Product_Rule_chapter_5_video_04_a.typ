#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Great job! You've correctly identified the solution. Let's walk through the steps together to understand how we arrived at this answer.")
  ]

  #text(size: 30pt, weight: "bold")[Chain Rule Application]
  #v(40pt)

  #only("2-")[$ f(x) = (x^2 + 4x + 4)^3 $]

  #only("2")[
    #voiceover("We start with the function f of x equals x squared plus 4x plus 4, all raised to the power of 3.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Identifying Components]
  #v(40pt)

  #only("1-")[- Outer function: $ u^3 $]
  #v(20pt)
  #only("2-")[- Inner function: $ u = x^2 + 4x + 4 $]

  #only("1")[
    #voiceover("To apply the chain rule, we need to identify the outer and inner functions. The outer function is u cubed,")
  ]

  #only("2")[
    #voiceover("and the inner function u is x squared plus 4x plus 4.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Applying Chain Rule]
  #v(40pt)

  #only("1-")[$ f'(x) = 3u^2 dot (dif u)/(dif x) $]
  #v(20pt)
  #only("2-")[$ = 3(x^2 + 4x + 4)^2 dot (dif)/(dif x)(x^2 + 4x + 4) $]

  #only("1")[
    #voiceover("Now, we apply the chain rule. The derivative of f of x equals 3 times u squared, multiplied by the derivative of u with respect to x.")
  ]

  #only("2")[
    #voiceover("Substituting back our inner function, we get 3 times x squared plus 4x plus 4, all squared, multiplied by the derivative of x squared plus 4x plus 4 with respect to x.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Differentiating Inner Function]
  #v(40pt)

  #only("1-")[$ (dif)/(dif x)(x^2 + 4x + 4) = 2x + 4 $]
  #v(20pt)
  #only("2-")[$ f'(x) = 3(x^2 + 4x + 4)^2 dot (2x + 4) $]

  #only("1")[
    #voiceover("The derivative of x squared plus 4x plus 4 is 2x plus 4.")
  ]

  #only("2")[
    #voiceover("Substituting this back into our equation, we get our final answer: f prime of x equals 3 times x squared plus 4x plus 4, all squared, multiplied by 2x plus 4.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)

  #only("1-")[$ f'(x) = 3(x^2 + 4x + 4)^2 (2x + 4) $]

  #only("1")[
    #voiceover("And there we have it! This is our final answer. The derivative of f of x equals 3 times x squared plus 4x plus 4, all squared, multiplied by 2x plus 4. Well done on solving this problem!")
  ]
]