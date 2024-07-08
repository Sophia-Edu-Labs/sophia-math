#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Not quite, but don't worry! Let's walk through the correct solution step-by-step.")
  ]

  #text(size: 30pt, weight: "bold")[Chain Rule Application]
  #v(40pt)

  #only("2-")[$ f(x) = (3x^2 + 2x + 1)^5 $]

  #only("2")[
    #voiceover("We start with the function f of x equals three x squared plus two x plus one, all raised to the power of 5.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Identifying Components]
  #v(40pt)

  #only("1-")[- Outer function: $ g(u) = u^5 $]
  #v(20pt)
  #only("2-")[- Inner function: $ h(x) = 3x^2 + 2x + 1 $]

  #only("1")[
    #voiceover("To apply the chain rule, we first identify the outer and inner functions. The outer function g of u is u to the power of 5.")
  ]

  #only("2")[
    #voiceover("The inner function h of x is three x squared plus two x plus one.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Chain Rule Formula]
  #v(40pt)

  #only("1-")[$ f'(x) = g'(h(x)) dot h'(x) $]

  #only("1")[
    #voiceover("The chain rule states that the derivative of f of x equals the derivative of the outer function g, evaluated at h of x, multiplied by the derivative of the inner function h of x.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Calculating Derivatives]
  #v(40pt)

  #only("1-")[$ g'(u) = 5u^4 $]
  #v(20pt)
  #only("2-")[$ h'(x) = 6x + 2 $]

  #only("1")[
    #voiceover("Let's calculate the derivatives. The derivative of g of u is 5 times u to the power of 4.")
  ]

  #only("2")[
    #voiceover("The derivative of h of x is 6x plus 2.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Applying Chain Rule]
  #v(40pt)

  #only("1-")[$ f'(x) = 5(3x^2 + 2x + 1)^4 dot (6x + 2) $]

  #only("1")[
    #voiceover("Now, we apply the chain rule. We substitute h of x, which is three x squared plus two x plus one, into g prime of u. Then we multiply this by h prime of x, which is 6x plus 2.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)

  #only("1-")[$ f'(x) = 5(3x^2 + 2x + 1)^4 (6x + 2) $]

  #only("1")[
    #voiceover("Our final answer is f prime of x equals 5 times the quantity three x squared plus two x plus one, all raised to the power of 4, multiplied by the quantity 6x plus 2.")
  ]

  #only("2")[
    #voiceover("This is the correct derivative of the original function using the chain rule. Well done on solving this problem!")
  ]
]