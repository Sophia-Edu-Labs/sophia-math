#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Derivative using Power Rule]
  #v(40pt)

  #only("1-")[
    $f(x) = 2x^3 + 3x^2$
  ]

  #v(20pt)

  #only("2-")[
    - Power Rule: $dif/dif x (x^n) = n x^(n-1)$
  ]

  #v(20pt)

  #only("3-")[
    - Constant Multiple Rule: $dif/dif x (c dot f(x)) = c dot dif/dif x (f(x))$
  ]

  #v(20pt)

  #only("4-")[
    $f'(x) = 2 dot 3x^2 + 3 dot 2x^1$
  ]

  #v(20pt)

  #only("5-")[
    $f'(x) = 6x^2 + 6x$
  ]

  #only("1")[
    #voiceover("That's okay! Let's go through the correct solution step-by-step. We start with the function f of x equals 2 x cubed plus 3 x squared.")
  ]

  #only("2")[
    #voiceover("To find the derivative, we'll use the Power Rule. This rule states that the derivative of x to the n-th power is n times x to the power of n minus 1.")
  ]

  #only("3")[
    #voiceover("We'll also need the Constant Multiple Rule, which says that the derivative of a constant times a function is the constant times the derivative of the function.")
  ]

  #only("4")[
    #voiceover("Applying these rules to our function, we get: For the first term, 2 times 3 x squared, and for the second term, 3 times 2 x to the first power.")
  ]

  #only("5")[
    #voiceover("Simplifying, we get our final answer: f prime of x equals 6 x squared plus 6 x. This matches the given solution, confirming that your answer was correct!")
  ]
]