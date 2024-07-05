#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Great job! You've correctly identified the derivative. Let's walk through the solution step-by-step to understand how we arrived at this answer.")
  ]

  #text(size: 30pt, weight: "bold")[Derivative of a Polynomial Function]
  #v(40pt)

  #only("2-")[$ f(x) = 3x^3 + 2x^2 $]

  #only("2")[
    #voiceover("We start with the function f of x equals three x cubed plus two x squared. To find its derivative, we'll use the sum rule and the power rule.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Sum Rule]
  #v(40pt)

  #only("1-")[$ (f + g)' = f' + g' $]
  #v(20pt)
  #only("2-")[$ f'(x) = (3x^3)' + (2x^2)' $]

  #only("1")[
    #voiceover("The sum rule states that the derivative of a sum is the sum of the derivatives. This means we can differentiate each term separately and then add the results.")
  ]

  #only("2")[
    #voiceover("Applying this to our function, we get: the derivative of f of x equals the derivative of three x cubed plus the derivative of two x squared.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Power Rule]
  #v(40pt)

  #only("1-")[$ (x^n)' = n x^(n-1) $]
  #v(20pt)
  #only("2-")[$ (3x^3)' = 3 dot 3 x^(3-1) = 9x^2 $]
  #v(20pt)
  #only("3-")[$ (2x^2)' = 2 dot 2 x^(2-1) = 4x $]

  #only("1")[
    #voiceover("Now we'll use the power rule, which states that the derivative of x to the n-th power is n times x to the power of n minus 1.")
  ]

  #only("2")[
    #voiceover("For the first term, three x cubed, we get: three times three x squared, which simplifies to nine x squared.")
  ]

  #only("3")[
    #voiceover("For the second term, two x squared, we get: two times two x to the first power, which simplifies to four x.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Result]
  #v(40pt)

  #only("1-")[$ f'(x) = 9x^2 + 4x $]

  #only("1")[
    #voiceover("Combining these results, we get the final derivative: f prime of x equals nine x squared plus four x. This is indeed the correct answer!")
  ]

  #only("2")[
    #voiceover("Remember, the sum rule and power rule are powerful tools for differentiating polynomial functions. Practice using them, and you'll find many derivative problems become much easier!")
  ]
]