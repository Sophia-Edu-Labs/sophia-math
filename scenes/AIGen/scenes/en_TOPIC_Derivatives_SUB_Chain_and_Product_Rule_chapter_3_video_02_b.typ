#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Chain Rule Application]
  #v(40pt)

  #only("1-")[$ f(x) = (4x^3 + 2x)^5 $]

  #only("1")[
    #voiceover("Not quite. Let's go through the correct solution step-by-step.")
  ]

  #only("2")[
    #voiceover("We start with the function f of x equals the quantity 4x cubed plus 2x, all raised to the power of 5.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Chain Rule Formula]
  #v(40pt)

  #only("1-")[$ (g(h(x)))' = g'(h(x)) dot h'(x) $]

  #only("1")[
    #voiceover("To apply the chain rule, we use the formula: The derivative of g of h of x equals g prime of h of x, times h prime of x.")
  ]

  #only("2-")[Where:]
  #v(10pt)
  #only("2-")[- $g(x) = x^5$]
  #only("3-")[- $h(x) = 4x^3 + 2x$]

  #only("2")[
    #voiceover("In our case, g of x is x to the power of 5,")
  ]

  #only("3")[
    #voiceover("and h of x is 4x cubed plus 2x.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 1: Find $g'(x)$]
  #v(40pt)

  #only("1-")[$ g(x) = x^5 $]
  #v(10pt)
  #only("2-")[$ g'(x) = 5x^4 $]

  #only("1")[
    #voiceover("Let's start by finding g prime of x. We have g of x equals x to the power of 5.")
  ]

  #only("2")[
    #voiceover("Using the power rule, we get g prime of x equals 5 times x to the power of 4.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 2: Find $h'(x)$]
  #v(40pt)

  #only("1-")[$ h(x) = 4x^3 + 2x $]
  #v(10pt)
  #only("2-")[$ h'(x) = 12x^2 + 2 $]

  #only("1")[
    #voiceover("Now, let's find h prime of x. We have h of x equals 4x cubed plus 2x.")
  ]

  #only("2")[
    #voiceover("Differentiating this, we get h prime of x equals 12x squared plus 2.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 3: Apply Chain Rule]
  #v(40pt)

  #only("1-")[$ f'(x) = g'(h(x)) dot h'(x) $]
  #v(10pt)
  #only("2-")[$ = 5(4x^3 + 2x)^4 dot (12x^2 + 2) $]

  #only("1")[
    #voiceover("Now we can apply the chain rule. f prime of x equals g prime of h of x, times h prime of x.")
  ]

  #only("2")[
    #voiceover("Substituting what we found, we get: 5 times the quantity 4x cubed plus 2x, all to the power of 4, times the quantity 12x squared plus 2.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)

  #only("1-")[$ f'(x) = 5(4x^3 + 2x)^4 (12x^2 + 2) $]

  #only("1")[
    #voiceover("So, our final answer is: f prime of x equals 5 times the quantity 4x cubed plus 2x, all to the power of 4, times the quantity 12x squared plus 2.")
  ]

  #only("2")[
    #voiceover("Well done! You've successfully applied the chain rule to differentiate this complex function. Remember, practice makes perfect when it comes to these types of problems.")
  ]
]