#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Great job! You've correctly found the derivative. Let's go through the solution step by step to understand how we arrived at this result.")
  ]

  #text(size: 30pt, weight: "bold")[Derivative of a Polynomial Function]
  #v(40pt)

  #only("2-")[$ f(x) = 2x^3 + 5x^2 + x $]

  #only("2")[
    #voiceover("We start with the function f of x equals two x cubed plus five x squared plus x.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Approach]
  #v(40pt)

  #only("1-")[- Apply the sum rule 📊]
  #v(20pt)
  #only("2-")[- Use the power rule for each term 🔢]
  #v(20pt)
  #only("3-")[- Simplify the result ✨]

  #only("1")[
    #voiceover("Our approach will be to first apply the sum rule, which states that the derivative of a sum is the sum of the derivatives.")
  ]

  #only("2")[
    #voiceover("Then, we'll use the power rule for each term. The power rule states that the derivative of x to the n-th power is n times x to the n minus 1 power.")
  ]

  #only("3")[
    #voiceover("Finally, we'll simplify our result.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step-by-Step Solution]
  #v(40pt)

  #only("1-")[$ f(x) = 2x^3 + 5x^2 + x $]
  #v(20pt)
  #only("2-")[#text(fill: blue)[$ f'(x) = (2x^3)' + (5x^2)' + (x)' $]]
  #v(20pt)
  #only("3-")[$ f'(x) = 6x^2 + 10x + 1 $]

  #only("1")[
    #voiceover("Starting with our function f of x equals two x cubed plus five x squared plus x,")
  ]

  #only("2")[
    #voiceover("we apply the sum rule to differentiate each term separately.")
  ]

  #only("3")[
    #voiceover("Now, let's apply the power rule to each term.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Applying the Power Rule]
  #v(40pt)

  #only("1-")[$ (2x^3)' = 2 dot 3x^(3-1) = 6x^2 $]
  #v(20pt)
  #only("2-")[$ (5x^2)' = 5 dot 2x^(2-1) = 10x $]
  #v(20pt)
  #only("3-")[$ (x)' = 1 dot x^(1-1) = 1 $]

  #only("1")[
    #voiceover("For the first term, two x cubed, we multiply by the power 3 and reduce the exponent by 1, giving us six x squared.")
  ]

  #only("2")[
    #voiceover("For five x squared, we multiply by 2 and reduce the exponent by 1, resulting in ten x.")
  ]

  #only("3")[
    #voiceover("For x, which is equivalent to x to the first power, we multiply by 1 and reduce the exponent to 0, giving us just 1.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Result]
  #v(40pt)

  #only("1-")[$ f'(x) = 6x^2 + 10x + 1 $]

  #only("1")[
    #voiceover("Combining these results, we get our final answer: The derivative of f of x is six x squared plus ten x plus one. This matches the solution we started with, confirming that your original answer was correct!")
  ]
]