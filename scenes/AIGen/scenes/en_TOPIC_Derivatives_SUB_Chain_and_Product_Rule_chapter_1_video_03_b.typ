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

  #text(size: 30pt, weight: "bold")[Product Rule for Differentiation]
  #v(40pt)

  #only("2-")[$ f(x) = x^2 sin(x) $]
  #v(20pt)
  #only("3-")[Product Rule: $ (u v)' = u' v + u v' $]
  #v(20pt)
  #only("4-")[Where: $ u = x^2 $ and $ v = sin(x) $]

  #only("2")[
    #voiceover("We start with the function f of x equals x squared times sine of x.")
  ]
  #only("3")[
    #voiceover("To differentiate this, we'll use the product rule. The product rule states that the derivative of u times v is equal to u prime times v plus u times v prime.")
  ]
  #only("4")[
    #voiceover("In our case, u is x squared and v is sine of x.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Applying the Product Rule]
  #v(40pt)

  #only("1-")[1. Find $ u' $: $ (x^2)' = 2x $]
  #v(20pt)
  #only("2-")[2. Find $ v' $: $ (sin(x))' = cos(x) $]
  #v(20pt)
  #only("3-")[3. Apply the formula: $ f'(x) = u' v + u v' $]
  #v(20pt)
  #only("4-")[$ f'(x) = 2x sin(x) + x^2 cos(x) $]

  #only("1")[
    #voiceover("First, we find u prime. The derivative of x squared is two x.")
  ]
  #only("2")[
    #voiceover("Next, we find v prime. The derivative of sine of x is cosine of x.")
  ]
  #only("3")[
    #voiceover("Now we apply the product rule formula: u prime times v plus u times v prime.")
  ]
  #only("4")[
    #voiceover("Substituting our values, we get: f prime of x equals two x times sine of x plus x squared times cosine of x.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)

  #only("1-")[$ f'(x) = 2x sin(x) + x^2 cos(x) $]
  #v(20pt)
  #only("2-")[✅ Correct application of the product rule]
  #v(20pt)
  #only("3-")[🔑 Key point: Product rule combines derivatives of factors]

  #only("1")[
    #voiceover("So our final answer is: f prime of x equals two x times sine of x plus x squared times cosine of x.")
  ]
  #only("2")[
    #voiceover("This solution demonstrates the correct application of the product rule.")
  ]
  #only("3")[
    #voiceover("The key takeaway is that the product rule allows us to differentiate complex functions by breaking them down into simpler parts and combining their derivatives.")
  ]
]