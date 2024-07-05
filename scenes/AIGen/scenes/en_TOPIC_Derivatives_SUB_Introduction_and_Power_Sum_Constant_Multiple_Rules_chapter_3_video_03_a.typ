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
    Given: $f(x) = 7x^3$
  ]

  #only("2-")[
    Constant Multiple Rule: $(c dot f(x))' = c dot f'(x)$
  ]

  #only("3-")[
    Where: $c = 7$, $f(x) = x^3$
  ]

  #only("1")[
    #voiceover("Great job on solving this problem! Let's walk through the solution step-by-step. We're given the function f of x equals 7 times x cubed.")
  ]

  #only("2")[
    #voiceover("To solve this, we'll use the Constant Multiple Rule. This rule states that the derivative of a constant times a function is equal to the constant times the derivative of the function.")
  ]

  #only("3")[
    #voiceover("In our case, the constant c is 7, and the function f of x is x cubed.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step-by-Step Solution]
  #v(40pt)

  #only("1-")[
    1. Find $f'(x)$:
  ]

  #only("2-")[
    $(x^3)' = 3x^2$
  ]

  #only("3-")[
    2. Apply Constant Multiple Rule:
  ]

  #only("4-")[
    $f'(x) = 7 dot (x^3)'$
  ]

  #only("5-")[
    $f'(x) = 7 dot 3x^2$
  ]

  #only("6-")[
    $f'(x) = 21x^2$
  ]

  #only("1")[
    #voiceover("Let's break this down into steps. First, we need to find the derivative of x cubed.")
  ]

  #only("2")[
    #voiceover("Using the power rule, we know that the derivative of x cubed is 3 times x squared.")
  ]

  #only("3")[
    #voiceover("Now, we can apply the Constant Multiple Rule.")
  ]

  #only("4")[
    #voiceover("The derivative of f of x is equal to 7 times the derivative of x cubed.")
  ]

  #only("5")[
    #voiceover("Substituting what we found earlier, we get 7 times 3x squared.")
  ]

  #only("6")[
    #voiceover("Simplifying, we arrive at our final answer: The derivative of f of x is 21x squared.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)

  #only("1-")[
    $f'(x) = 21x^2$ 📊
  ]

  #only("2-")[
    Key Points:
    - Constant Multiple Rule
    - Power Rule
    - Simplification
  ]

  #only("1")[
    #voiceover("So, our final answer is that the derivative of f of x equals 21x squared.")
  ]

  #only("2")[
    #voiceover("To recap, we used two important concepts here: the Constant Multiple Rule and the Power Rule. We then simplified our result to get the final answer. Great job on working through this problem!")
  ]
]