#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Chain Rule Application]
  #v(40pt)

  #only("-1")[$ f(x) = (x^2 + 2)^4 $]
  #v(20pt)
  #only("2-")[$ u = x^2 + 2 $]
  #v(20pt)
  #only("3-")[$ f(x) = u^4 $]
  #v(20pt)
  #only("4-")[$ f'(x) = 4u^3 dot dif u/dif x $]
  #v(20pt)
  #only("5-")[$ dif u/dif x = 2x $]
  #v(20pt)
  #only("6-")[$ f'(x) = 4(x^2 + 2)^3 dot 2x $]
  #v(20pt)
  #only("7-")[$ f'(1) = 4(1^2 + 2)^3 dot 2(1) = 4(3)^3 dot 2 = 216 $]

  #only("1")[
    #voiceover("Not quite, but don't worry! Let's walk through the correct solution step-by-step. We start with the function f of x equals x squared plus 2, all to the fourth power.")
  ]
  #only("2")[
    #voiceover("To apply the chain rule, let's first identify the outer and inner functions. We can let u equal x squared plus 2.")
  ]
  #only("3")[
    #voiceover("This allows us to rewrite our function as f of x equals u to the fourth power.")
  ]
  #only("4")[
    #voiceover("Now, we can apply the chain rule. The derivative of f with respect to x equals 4u cubed times du over dx.")
  ]
  #only("5")[
    #voiceover("Next, we need to find du over dx. The derivative of x squared plus 2 with respect to x is 2x.")
  ]
  #only("6")[
    #voiceover("Substituting this back into our equation and replacing u with x squared plus 2, we get f prime of x equals 4 times x squared plus 2, all cubed, times 2x.")
  ]
  #only("7")[
    #voiceover("Finally, to find f prime of 1, we simply plug in 1 for x. This gives us 4 times 3 cubed times 2, which equals 216.")
  ]
]