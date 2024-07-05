#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Constant Multiple Rule]
  #v(40pt)

  #only("1-")[
    Given: $f(x) = 5x^3$
  ]
  #v(20pt)

  #only("2-")[
    Step 1: Identify the constant multiple
    - Constant: 5
    - Function: $x^3$
  ]
  #v(20pt)

  #only("3-")[
    Step 2: Apply the rule
    $(c dot g(x))' = c dot g'(x)$
  ]
  #v(20pt)

  #only("4-")[
    Step 3: Differentiate $x^3$
    $(x^3)' = 3x^2$
  ]
  #v(20pt)

  #only("5-")[
    Step 4: Multiply by the constant
    $f'(x) = 5 dot 3x^2 = 15x^2$
  ]

  #only("1")[
    #voiceover("Great job! You've correctly found the derivative. Let's walk through the solution step-by-step to understand how we arrived at this answer.")
  ]

  #only("2")[
    #voiceover("First, let's identify the parts of our function. We have f of x equals 5 times x cubed. Here, 5 is our constant multiple, and x cubed is the function we're differentiating.")
  ]

  #only("3")[
    #voiceover("Now, we'll apply the Constant Multiple Rule. This rule states that the derivative of a constant times a function is equal to the constant times the derivative of the function.")
  ]

  #only("4")[
    #voiceover("Next, let's differentiate x cubed. The derivative of x to the nth power is n times x to the n minus 1 power. So, the derivative of x cubed is 3 times x squared.")
  ]

  #only("5")[
    #voiceover("Finally, we multiply our constant 5 by the derivative we just found, 3 x squared. This gives us 15 x squared, which is our final answer. So, f prime of x equals 15 x squared.")
  ]
]