#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Product Rule Application]
  #v(40pt)

  #only("-1")[
    $f(x) = x^3 ln(x)$
  ]

  #only("2-")[
    $f(x) = underbrace(x^3)_u dot underbrace(ln(x))_v$
  ]

  #only("3-")[
    $f'(x) = u'v + uv'$
  ]

  #only("4-")[
    $f'(x) = (3x^2) dot ln(x) + x^3 dot (1/x)$
  ]

  #only("5-")[
    $f'(x) = 3x^2 ln(x) + x^2$
  ]

  #only("6-")[
    $f'(1) = 3(1)^2 ln(1) + 1^2 = 0 + 1 = 1$
  ]

  #only("1")[
    #voiceover("Not quite. Let's walk through the correct solution step-by-step.")
  ]

  #only("2")[
    #voiceover("We start with the function f of x equals x cubed times the natural logarithm of x. To apply the product rule, let's identify u as x cubed and v as ln of x.")
  ]

  #only("3")[
    #voiceover("The product rule states that the derivative of a product is u prime times v plus u times v prime.")
  ]

  #only("4")[
    #voiceover("Now, let's find u prime and v prime. The derivative of x cubed is 3 x squared, and the derivative of ln of x is 1 over x.")
  ]

  #only("5")[
    #voiceover("Substituting these into our formula, we get 3 x squared times ln of x plus x cubed times 1 over x. Simplifying the second term, we get 3 x squared ln of x plus x squared.")
  ]

  #only("6")[
    #voiceover("Finally, to find f prime of 1, we substitute x equals 1 into our derivative. The natural log of 1 is 0, so the first term becomes 0. The second term is just 1 squared, which is 1. Therefore, f prime of 1 equals 1.")
  ]
]