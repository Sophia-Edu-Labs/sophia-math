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

  #text(size: 30pt, weight: "bold")[Differentiating a Polynomial]
  #v(40pt)

  #only("2-")[$ f(x) = 3x^4 + 2x^3 + x^2 $]

  #only("2")[
    #voiceover("We start with the function f of x equals 3 x to the fourth power plus 2 x cubed plus x squared.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Approach: Sum Rule]
  #v(40pt)

  #only("1-")[- Differentiate each term separately 📊]
  #v(20pt)
  #only("2-")[- Apply power rule to each term 💡]

  #only("1")[
    #voiceover("To find the derivative, we'll use the sum rule. This means we can differentiate each term separately and then add the results.")
  ]

  #only("2")[
    #voiceover("For each term, we'll apply the power rule of differentiation.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 1: Differentiating $3x^4$]
  #v(40pt)

  #only("1-")[$ (3x^4)' = 3 dot 4 dot x^(4-1) = 12x^3 $]

  #only("1")[
    #voiceover("Let's start with the first term, 3 x to the fourth. Using the power rule, we multiply the coefficient 3 by the exponent 4, and then reduce the exponent by 1. This gives us 12 x cubed.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 2: Differentiating $2x^3$]
  #v(40pt)

  #only("1-")[$ (2x^3)' = 2 dot 3 dot x^(3-1) = 6x^2 $]

  #only("1")[
    #voiceover("For the second term, 2 x cubed, we multiply 2 by 3 and reduce the exponent to 2. This results in 6 x squared.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 3: Differentiating $x^2$]
  #v(40pt)

  #only("1-")[$ (x^2)' = 2 dot x^(2-1) = 2x $]

  #only("1")[
    #voiceover("For the last term, x squared, we multiply by 2 and reduce the exponent to 1. This gives us 2x.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Result]
  #v(40pt)

  #only("1-")[$ f'(x) = 12x^3 + 6x^2 + 2x $]

  #only("1")[
    #voiceover("Now, we combine all these terms using the sum rule. The derivative of f of x is 12 x cubed plus 6 x squared plus 2x.")
  ]

  #only("2")[
    #voiceover("This matches our original answer. Well done on solving this problem!")
  ]
]