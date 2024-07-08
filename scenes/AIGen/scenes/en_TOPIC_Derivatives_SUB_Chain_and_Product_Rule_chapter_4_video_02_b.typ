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

  #only("2-")[$ f(x) = x^3 cos(x) $]

  #only("2")[
    #voiceover("We start with the function f of x equals x cubed times cosine of x.")
  ]

  #only("3-")[
    #align(center)[
      #text(fill: aqua)[⇓ Product Rule: $(u v)' = u' v + u v'$]
    ]
  ]

  #only("3")[
    #voiceover("We'll apply the product rule, which states that the derivative of a product u times v is u prime times v plus u times v prime.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 1: Identify u and v]
  #v(40pt)

  #only("1-")[$ u = x^3 $]
  #v(10pt)
  #only("2-")[$ v = cos(x) $]

  #only("1")[
    #voiceover("Let's identify our u and v. We'll let u equal x cubed")
  ]

  #only("2")[
    #voiceover("and v equal cosine of x.")
  ]

  #only("3-")[
    #align(center)[
      #text(fill: aqua)[⇓ Find u' and v']
    ]
  ]

  #only("3")[
    #voiceover("Now, we need to find the derivatives of u and v.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 2: Calculate u' and v']
  #v(40pt)

  #only("1-")[$ u' = 3x^2 $]
  #v(10pt)
  #only("2-")[$ v' = -sin(x) $]

  #only("1")[
    #voiceover("The derivative of u, which is x cubed, is 3 x squared.")
  ]

  #only("2")[
    #voiceover("The derivative of v, which is cosine of x, is negative sine of x.")
  ]

  #only("3-")[
    #align(center)[
      #text(fill: aqua)[⇓ Apply Product Rule]
    ]
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
  #only("2-")[$ f'(x) = 3x^2 cos(x) + x^3 (-sin(x)) $]
  #v(10pt)
  #only("3-")[$ f'(x) = 3x^2 cos(x) - x^3 sin(x) $]

  #only("1")[
    #voiceover("Applying the product rule, we get f prime of x equals u prime times v plus u times v prime.")
  ]

  #only("2")[
    #voiceover("Substituting our values, we get 3 x squared times cosine of x plus x cubed times negative sine of x.")
  ]

  #only("3")[
    #voiceover("Simplifying, we arrive at our final answer: f prime of x equals 3 x squared times cosine of x minus x cubed times sine of x.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)

  #only("1-")[$ f'(x) = 3x^2 cos(x) - x^3 sin(x) $]

  #only("1")[
    #voiceover("So, our final answer is f prime of x equals 3 x squared times cosine of x minus x cubed times sine of x. Well done on solving this problem using the product rule!")
  ]
]