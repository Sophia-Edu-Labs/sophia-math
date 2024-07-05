#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Great job! You've correctly identified the derivative. Let's walk through the solution step-by-step to understand how we arrived at this result.")
  ]

  #text(size: 30pt, weight: "bold")[Derivative using Power Rule]
  #v(40pt)

  #only("2-")[
    #text()[Original function: $ f(x) = 5x^5 + 3x^4 + x^3 $]
  ]

  #only("2")[
    #voiceover("We start with the original function f of x equals five x to the fifth power plus three x to the fourth power plus x cubed.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 1: Apply Power Rule]
  #v(40pt)

  #only("1-")[
    - Power Rule: $ (x^n)' = n x^(n-1) $
  ]

  #only("2-")[
    - Apply to each term separately
  ]

  #only("1")[
    #voiceover("Let's apply the power rule to each term. The power rule states that the derivative of x to the n-th power is n times x to the power of n minus 1.")
  ]

  #only("2")[
    #voiceover("We'll apply this rule to each term of our function separately.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 2: Differentiate Each Term]
  #v(40pt)

  #only("1-")[$ (5x^5)' = 5 dot 5 x^(5-1) = 25x^4 $]
  #v(10pt)
  #only("2-")[$ (3x^4)' = 3 dot 4 x^(4-1) = 12x^3 $]
  #v(10pt)
  #only("3-")[$ (x^3)' = 3 x^(3-1) = 3x^2 $]

  #only("1")[
    #voiceover("For the first term, five x to the fifth, we multiply by the power 5, and reduce the exponent by 1. This gives us twenty-five x to the fourth.")
  ]

  #only("2")[
    #voiceover("For the second term, three x to the fourth, we multiply by 4 and reduce the exponent by 1, resulting in twelve x cubed.")
  ]

  #only("3")[
    #voiceover("For the last term, x cubed, we multiply by 3 and reduce the exponent by 1, giving us three x squared.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 3: Combine Terms]
  #v(40pt)

  #only("1-")[$ f'(x) = 25x^4 + 12x^3 + 3x^2 $]

  #only("1")[
    #voiceover("Now, we combine all these terms to get our final derivative. The derivative of f of x is twenty-five x to the fourth plus twelve x cubed plus three x squared.")
  ]

  #only("2")[
    #voiceover("And there we have it! We've successfully found the derivative of the given function using the power rule.")
  ]
]