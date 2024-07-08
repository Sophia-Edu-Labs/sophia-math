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
    $f(x) = x^2 e^x$
  ]

  #only("2-")[
    $f(x) = $ #text(fill: blue)[$x^2$] #text(fill: red)[$e^x$]
  ]

  #v(20pt)

  #only("3-")[
    Let $u = x^2$ and $v = e^x$
  ]

  #v(20pt)

  #only("4-")[
    $f'(x) = $ #text(fill: blue)[$u'v$] #text(fill: red)[$ + uv'$]
  ]

  #v(20pt)

  #only("5-")[
    $f'(x) = $ #text(fill: blue)[$(2x)e^x$] #text(fill: red)[$ + x^2(e^x)$]
  ]

  #v(20pt)

  #only("6-")[
    $f'(x) = 2x e^x + x^2 e^x$
  ]

  #v(20pt)

  #only("7-")[
    $f'(1) = 2(1) e^1 + 1^2 e^1 = 2e + e = 3e$
  ]

  #only("1")[
    #voiceover("Let's review the correct solution step-by-step. We start with the function f of x equals x squared times e to the x.")
  ]

  #only("2")[
    #voiceover("To apply the product rule, we need to identify two functions being multiplied. Here, we have x squared in blue and e to the x in red.")
  ]

  #only("3")[
    #voiceover("Let's call x squared 'u' and e to the x 'v'. This will make it easier to apply the product rule.")
  ]

  #only("4")[
    #voiceover("The product rule states that the derivative of a product is the derivative of the first function times the second function, plus the first function times the derivative of the second function. In symbols, that's u prime v plus u v prime.")
  ]

  #only("5")[
    #voiceover("Now, let's calculate each part. The derivative of x squared is 2x, so u prime v is 2x times e to the x, shown in blue. For u v prime, we have x squared times the derivative of e to the x, which is just e to the x, shown in red.")
  ]

  #only("6")[
    #voiceover("Combining these parts, we get f prime of x equals 2x e to the x plus x squared e to the x.")
  ]

  #only("7")[
    #voiceover("Finally, to find f prime of 1, we substitute x equals 1 into our derivative. This gives us 2 times 1 times e to the 1, plus 1 squared times e to the 1, which simplifies to 2e plus e, or 3e.")
  ]
]