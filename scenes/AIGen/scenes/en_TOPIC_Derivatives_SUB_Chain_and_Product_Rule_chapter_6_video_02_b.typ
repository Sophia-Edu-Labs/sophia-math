#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Not quite. Let's walk through the correct solution step-by-step.")
  ]

  #text(size: 30pt, weight: "bold")[Product Rule Application]
  #v(40pt)

  #only("2-")[$ f(x) = x^4 e^x $]

  #only("2")[
    #voiceover("We start with the function f of x equals x to the fourth power times e to the x.")
  ]

  #only("3-")[
    #align(center)[#text(fill: aqua)[⇓ Product Rule: $(u v)' = u' v + u v'$]]
  ]

  #only("3")[
    #voiceover("We'll apply the product rule, which states that the derivative of a product u v is u prime v plus u v prime.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 1: Identify u and v]
  #v(40pt)

  #only("1-")[$ u = x^4 $]
  #v(10pt)
  #only("2-")[$ v = e^x $]

  #only("1")[
    #voiceover("Let's identify our u and v. We'll let u equal x to the fourth power")
  ]

  #only("2")[
    #voiceover("and v equal e to the x.")
  ]

  #only("3-")[
    #align(center)[#text(fill: aqua)[⇓ Find u' and v']]
  ]

  #only("3")[
    #voiceover("Now, we need to find the derivatives of u and v.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 2: Calculate u' and v']
  #v(40pt)

  #only("1-")[$ u' = 4x^3 $]
  #v(10pt)
  #only("2-")[$ v' = e^x $]

  #only("1")[
    #voiceover("The derivative of u, which is x to the fourth, is 4 x cubed. We get this by applying the power rule.")
  ]

  #only("2")[
    #voiceover("The derivative of v, which is e to the x, is simply e to the x. This is because e to the x is its own derivative.")
  ]

  #only("3-")[
    #align(center)[#text(fill: aqua)[⇓ Apply Product Rule]]
  ]

  #only("3")[
    #voiceover("Now that we have u prime and v prime, let's apply the product rule.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 3: Apply Product Rule]
  #v(40pt)

  #only("1-")[$ f'(x) = u' v + u v' $]
  #v(10pt)
  #only("2-")[$ f'(x) = 4x^3 e^x + x^4 e^x $]

  #only("1")[
    #voiceover("We apply the product rule formula: f prime of x equals u prime v plus u v prime.")
  ]

  #only("2")[
    #voiceover("Substituting our values, we get: f prime of x equals 4 x cubed times e to the x, plus x to the fourth times e to the x.")
  ]

  #only("3-")[
    #align(center)[#text(fill: aqua)[⇓ Final Answer]]
  ]

  #only("3")[
    #voiceover("And this gives us our final answer!")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)

  #only("1-")[$ f'(x) = 4x^3 e^x + x^4 e^x $]

  #only("1")[
    #voiceover("So, the derivative of x to the fourth times e to the x is 4 x cubed times e to the x, plus x to the fourth times e to the x. Great job on solving this problem using the product rule!")
  ]
]