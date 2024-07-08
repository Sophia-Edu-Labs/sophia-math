#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Chain Rule Application]
  #v(40pt)

  #only("-1")[
    $f(x) = (2x + 3)^4$
  ]

  #only("2-")[
    Let $u = 2x + 3$
  ]

  #only("3-")[
    Then $f(x) = u^4$
  ]

  #only("4-")[
    $f'(x) = 4u^3 dot dif u/dif x$
  ]

  #only("5-")[
    $dif u/dif x = 2$
  ]

  #only("6-")[
    $f'(x) = 4(2x + 3)^3 dot 2$
  ]

  #only("7-")[
    $f'(x) = 4(2x + 3)^3 (2)$
  ]

  #only("8-")[
    $f'(1) = 4(2(1) + 3)^3 (2)$
  ]

  #only("9-")[
    $f'(1) = 4(5)^3 (2) = 1000$
  ]

  #only("1")[
    #voiceover("Great job on solving this problem! Let's go through the solution step-by-step using the chain rule.")
  ]

  #only("2")[
    #voiceover("First, we identify the inner function. Here, u equals 2x plus 3.")
  ]

  #only("3")[
    #voiceover("This allows us to rewrite our original function f of x as u to the fourth power.")
  ]

  #only("4")[
    #voiceover("Now, we apply the chain rule. The derivative of f with respect to x equals 4u cubed times the derivative of u with respect to x.")
  ]

  #only("5")[
    #voiceover("The derivative of u with respect to x is simply 2.")
  ]

  #only("6")[
    #voiceover("Substituting back u equals 2x plus 3, we get 4 times 2x plus 3 cubed times 2.")
  ]

  #only("7")[
    #voiceover("This simplifies to our final expression for f prime of x.")
  ]

  #only("8")[
    #voiceover("To find f prime of 1, we substitute x equals 1 into our expression.")
  ]

  #only("9")[
    #voiceover("Simplifying, we get 4 times 5 cubed times 2, which equals 1000. And that's our final answer!")
  ]
]