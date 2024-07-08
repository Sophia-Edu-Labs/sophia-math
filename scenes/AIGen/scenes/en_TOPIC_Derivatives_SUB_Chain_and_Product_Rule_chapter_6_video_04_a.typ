#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Great job! You've correctly solved this problem. Let's walk through the solution step-by-step to understand how we arrived at the answer.")
  ]

  #text(size: 30pt, weight: "bold")[Product Rule for Derivatives]
  #v(40pt)

  #only("2-")[
    Given function: $f(x) = x^2 cos(x)$
  ]

  #only("2")[
    #voiceover("We're given the function f of x equals x squared times cosine of x. To differentiate this, we'll need to use the product rule.")
  ]

  #only("3-")[
    Product Rule: $(u v)' = u' v + u v'$
  ]

  #only("3")[
    #voiceover("The product rule states that the derivative of a product u v is equal to u prime times v plus u times v prime.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Applying the Product Rule]
  #v(40pt)

  #only("1-")[
    Let $u = x^2$ and $v = cos(x)$
  ]

  #only("1")[
    #voiceover("Let's apply this to our function. We'll let u equal x squared and v equal cosine of x.")
  ]

  #only("2-")[
    $u' = 2x$
  ]

  #only("2")[
    #voiceover("The derivative of u, which is x squared, is 2x.")
  ]

  #only("3-")[
    $v' = -sin(x)$
  ]

  #only("3")[
    #voiceover("The derivative of v, which is cosine of x, is negative sine of x.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Putting It All Together]
  #v(40pt)

  #only("1-")[
    $f'(x) = u' v + u v'$
  ]

  #only("1")[
    #voiceover("Now, let's put these pieces together using the product rule formula.")
  ]

  #only("2-")[
    $f'(x) = (2x)(cos(x)) + (x^2)(-sin(x))$
  ]

  #only("2")[
    #voiceover("f prime of x equals 2x times cosine of x, plus x squared times negative sine of x.")
  ]

  #only("3-")[
    $f'(x) = 2x cos(x) - x^2 sin(x)$
  ]

  #only("3")[
    #voiceover("Simplifying, we get f prime of x equals 2x cosine of x minus x squared sine of x.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)

  #only("1-")[
    $f'(x) = 2x cos(x) - x^2 sin(x)$
  ]

  #only("1")[
    #voiceover("So, our final answer is f prime of x equals 2x cosine of x minus x squared sine of x. This is the correct derivative of the original function.")
  ]

  #only("2-")[
    📝 Remember:
    - Product Rule: $(u v)' = u' v + u v'$
    - Derivative of $cos(x)$ is $-sin(x)$
  ]

  #only("2")[
    #voiceover("Remember, the key to solving this problem was applying the product rule correctly and knowing the derivative of cosine. Great work on mastering these concepts!")
  ]
]