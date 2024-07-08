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
    $f(x) = (5x + 1)^3$
  ]

  #only("2-")[
    Let $u = 5x + 1$
  ]

  #only("3-")[
    $f(x) = u^3$
  ]

  #only("4-")[
    $f'(x) = 3u^2 dot dif u/dif x$
  ]

  #only("5-")[
    $dif u/dif x = 5$
  ]

  #only("6-")[
    $f'(x) = 3(5x + 1)^2 dot 5$
  ]

  #only("7-")[
    $f'(x) = 3(5x + 1)^2 (5)$
  ]

  #only("8-")[
    $f'(2) = 3(5 dot 2 + 1)^2 (5)$
  ]

  #only("9-")[
    $f'(2) = 3(11)^2 (5) = 1815$
  ]

  #only("1")[
    #voiceover("It looks like there was a mistake. Let's go through the correct solution step-by-step. We start with the function f of x equals five x plus one, all cubed.")
  ]

  #only("2")[
    #voiceover("To apply the chain rule, let's first set u equal to five x plus one. This will be our inner function.")
  ]

  #only("3")[
    #voiceover("Now we can rewrite our original function as f of x equals u cubed.")
  ]

  #only("4")[
    #voiceover("Applying the chain rule, we get f prime of x equals three u squared times d u over d x.")
  ]

  #only("5")[
    #voiceover("The derivative of u with respect to x is simply 5.")
  ]

  #only("6")[
    #voiceover("Substituting this back into our equation, we get f prime of x equals three times five x plus one squared, times 5.")
  ]

  #only("7")[
    #voiceover("This simplifies to our final derivative expression: f prime of x equals three times five x plus one squared, times five.")
  ]

  #only("8")[
    #voiceover("Now, to find f prime of 2, we substitute x equals 2 into our derivative expression.")
  ]

  #only("9")[
    #voiceover("This gives us f prime of 2 equals three times eleven squared times five, which equals 1815. And that's our final answer!")
  ]
]