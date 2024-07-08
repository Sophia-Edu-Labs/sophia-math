#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Combining Chain Rule and Product Rule]
  #v(40pt)

  #only("-1")[
    $f(x) = x sin(x^2)$
  ]

  #only("2-")[
    - Product Rule: $(u v)' = u' v + u v'$
  ]

  #only("3-")[
    - Let $u = x$ and $v = sin(x^2)$
  ]

  #only("4-")[
    - $u' = 1$
  ]

  #only("5-")[
    - $v' = cos(x^2) dot (x^2)'$ (Chain Rule)
  ]

  #only("1")[
    #voiceover("Let's review the correct solution step-by-step. We start with the function f of x equals x times sine of x squared.")
  ]

  #only("2")[
    #voiceover("To differentiate this, we'll use the product rule. The product rule states that the derivative of u times v is u prime times v plus u times v prime.")
  ]

  #only("3")[
    #voiceover("In our case, let's set u equal to x and v equal to sine of x squared.")
  ]

  #only("4")[
    #voiceover("The derivative of u, which is x, is simply 1.")
  ]

  #only("5")[
    #voiceover("For v prime, we need to use the chain rule. The derivative of sine of x squared is cosine of x squared times the derivative of x squared.")
  ]
]
```

### Slide 2
```typst

#slide()[
  #text(size: 30pt, weight: "bold")[Combining Chain Rule and Product Rule]
  #v(40pt)

  #only("6-")[
    - $(x^2)' = 2x$
  ]

  #only("7-")[
    - $v' = cos(x^2) dot 2x$
  ]

  #only("8-")[
    $f'(x) = 1 dot sin(x^2) + x dot (2x cos(x^2))$
  ]

  #only("9-")[
    $f'(x) = sin(x^2) + 2x^2 cos(x^2)$
  ]

  #only("10-")[
    $f'(1) = sin(1) + 2 cos(1)$
  ]

  #only("6")[
    #voiceover("The derivative of x squared is 2x.")
  ]

  #only("7")[
    #voiceover("So, v prime equals cosine of x squared times 2x.")
  ]

  #only("8")[
    #voiceover("Now, let's apply the product rule. F prime of x equals u prime times v, which is 1 times sine of x squared, plus u times v prime, which is x times 2x cosine of x squared.")
  ]

  #only("9")[
    #voiceover("Simplifying this, we get f prime of x equals sine of x squared plus 2 x squared cosine of x squared.")
  ]

  #only("10")[
    #voiceover("Finally, to find f prime of 1, we substitute x with 1. This gives us sine of 1 plus 2 cosine of 1. And that's our final answer!")
  ]
]
```

This way, the content is split logically, and the numbering for the statements on the second slide starts from 1 again.