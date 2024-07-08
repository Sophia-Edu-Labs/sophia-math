#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Product Rule Application]
  #v(40pt)

  #only("-1")[- Function: $f(x) = x e^x$]
  #v(20pt)
  #only("2-")[- Product Rule: $(u v)' = u' v + u v'$]
  #v(20pt)
  #only("3-")[- Let $u = x$ and $v = e^x$]
  #v(20pt)
  #only("4-")[- $u' = 1$ and $v' = e^x$]
  #v(20pt)
  #only("5-")[- $f'(x) = 1 dot e^x + x dot e^x = e^x + x e^x$]
  #v(20pt)
  #only("6-")[- Evaluate at $x = 1$: $f'(1) = e^1 + 1 dot e^1 = e + e = 2e$]

  #only("1")[
    #voiceover("Not quite, but let's go over the correct solution step-by-step. We start with the function f of x equals x times e to the x.")
  ]
  #only("2")[
    #voiceover("To differentiate this, we'll use the product rule. The product rule states that the derivative of u times v equals u prime times v plus u times v prime.")
  ]
  #only("3")[
    #voiceover("In our case, let's set u equal to x and v equal to e to the x.")
  ]
  #only("4")[
    #voiceover("Now, we need to find u prime and v prime. The derivative of x is 1, so u prime equals 1. The derivative of e to the x is e to the x, so v prime equals e to the x.")
  ]
  #only("5")[
    #voiceover("Applying the product rule, we get f prime of x equals 1 times e to the x, plus x times e to the x. This simplifies to e to the x plus x times e to the x.")
  ]
  #only("6")[
    #voiceover("Finally, we need to evaluate this at x equals 1. Plugging in 1 for x, we get e to the first power plus 1 times e to the first power, which equals e plus e, or 2e. And that's our final answer!")
  ]
]