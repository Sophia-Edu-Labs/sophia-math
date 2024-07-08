#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Not quite. Let's go through the correct solution step-by-step.")
  ]

  #text(size: 30pt, weight: "bold")[Chain Rule Application]
  #v(40pt)

  #only("2-")[$ f(x) = (3x^2 + 2x + 1)^6 $]

  #only("2")[
    #voiceover("We start with the function f of x equals the quantity 3 x squared plus 2x plus 1, all raised to the power of 6.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Identifying Components]
  #v(40pt)

  #only("1-")[- Outer function: $ g(u) = u^6 $]
  #v(20pt)
  #only("2-")[- Inner function: $ h(x) = 3x^2 + 2x + 1 $]

  #only("1")[
    #voiceover("To apply the chain rule, we first identify the outer and inner functions. The outer function g of u is u to the power of 6.")
  ]

  #only("2")[
    #voiceover("The inner function h of x is 3 x squared plus 2x plus 1.")
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

  #only("1-")[1. $ g'(u) = 6u^5 $]
  #v(20pt)
  #only("2-")[2. $ h'(x) = 6x + 2 $]

  #only("1")[
    #voiceover("First, we calculate the derivative of the outer function. The derivative of g of u is 6 times u to the power of 5.")
  ]

  #only("2")[
    #voiceover("Next, we find the derivative of the inner function. The derivative of h of x is 6x plus 2.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Applying Chain Rule]
  #v(40pt)

  #only("1-")[$ f'(x) = 6(3x^2 + 2x + 1)^5 dot (6x + 2) $]

  #only("1")[
    #voiceover("Now we apply the chain rule. We substitute h of x, which is 3 x squared plus 2x plus 1, into g prime of u. Then we multiply this by h prime of x, which is 6x plus 2.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)

  #only("1-")[$ f'(x) = 6(3x^2 + 2x + 1)^5 (6x + 2) $]

  #only("1")[
    #voiceover("Our final answer is f prime of x equals 6 times the quantity 3 x squared plus 2x plus 1, all raised to the power of 5, multiplied by the quantity 6x plus 2.")
  ]
]