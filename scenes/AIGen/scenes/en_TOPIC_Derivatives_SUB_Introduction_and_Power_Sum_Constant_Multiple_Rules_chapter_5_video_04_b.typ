#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Power Rule Application]
  #v(40pt)

  #only("1-")[Given function: $f(x) = 8x^7$]
  #v(20pt)

  #only("2-")[Power Rule: $(d)/("dx") x^n = n dot x^(n-1)$]
  #v(20pt)

  #only("3-")[Here, $n = 7$]
  #v(20pt)

  #only("4-")[Derivative: $f'(x) = 7 dot 8 dot x^(7-1)$]
  #v(20pt)

  #only("5-")[Simplified: $f'(x) = 56x^6$]

  #only("1")[
    #voiceover("Not quite. Let's walk through the correct solution step by step.")
  ]

  #only("2")[
    #voiceover("We start with the power rule for differentiation. This rule states that the derivative of x to the power of n is n times x to the power of n minus 1.")
  ]

  #only("3")[
    #voiceover("In our function, f of x equals 8 x to the power of 7, so n is equal to 7.")
  ]

  #only("4")[
    #voiceover("Applying the power rule, we get 7 times 8 times x to the power of 7 minus 1, which is 6.")
  ]

  #only("5")[
    #voiceover("Simplifying this, we get our final answer: The derivative f prime of x equals 56 x to the power of 6.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Explanation]
  #v(40pt)

  #only("1-")[- Coefficient: 8 becomes part of the derivative]
  #v(20pt)

  #only("2-")[- Exponent: 7 becomes the new coefficient]
  #v(20pt)

  #only("3-")[- New exponent: Original exponent minus 1]

  #only("1")[
    #voiceover("Let's break down what happened. First, the coefficient 8 from the original function becomes part of our derivative.")
  ]

  #only("2")[
    #voiceover("Next, the exponent 7 becomes our new coefficient when we apply the power rule.")
  ]

  #only("3")[
    #voiceover("Finally, our new exponent is the original exponent minus 1. So 7 minus 1 gives us 6.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Key Takeaways]
  #v(40pt)

  #only("1-")[- Power Rule is crucial for polynomial differentiation 📊]
  #v(20pt)

  #only("2-")[- Always multiply the coefficient by the exponent 🔢]
  #v(20pt)

  #only("3-")[- Decrease the exponent by 1 ⬇️]
  #v(20pt)

  #only("4-")[- Practice makes perfect! 💪]

  #only("1")[
    #voiceover("The power rule is a crucial tool for differentiating polynomials.")
  ]

  #only("2")[
    #voiceover("Remember to always multiply the coefficient by the exponent when applying this rule.")
  ]

  #only("3")[
    #voiceover("And don't forget to decrease the exponent by 1 in your result.")
  ]

  #only("4")[
    #voiceover("Keep practicing with different polynomials to master this technique. Great work on solving this problem!")
  ]
]