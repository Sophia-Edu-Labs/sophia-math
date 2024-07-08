#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Product Rule Application]
  #v(40pt)

  #only("1-")[- Function: $f(x) = x^2 e^x$]
  #v(20pt)
  #only("2-")[- Product Rule: $(u v)' = u' v + u v'$]
  #v(20pt)
  #only("3-")[- Let $u = x^2$ and $v = e^x$]
  #v(20pt)
  #only("4-")[- $u' = 2x$ and $v' = e^x$]
  #v(20pt)
  #only("5-")[- $f'(x) = 2x e^x + x^2 e^x$]
  #v(20pt)
  #only("6-")[- $f'(0) = 2(0) e^0 + 0^2 e^0 = 0$]

  #only("1")[
    #voiceover("Not quite, but no worries! Let's walk through the correct solution step by step. We start with the function f of x equals x squared times e to the x.")
  ]
  #only("2")[
    #voiceover("To differentiate this, we'll use the product rule. The product rule states that the derivative of u times v is u prime times v plus u times v prime.")
  ]
  #only("3")[
    #voiceover("In our case, let's set u equal to x squared and v equal to e to the x.")
  ]
  #only("4")[
    #voiceover("Now, we need to find u prime and v prime. The derivative of x squared is 2x, so u prime equals 2x. The derivative of e to the x is itself, so v prime equals e to the x.")
  ]
  #only("5")[
    #voiceover("Applying the product rule, we get f prime of x equals 2x times e to the x plus x squared times e to the x.")
  ]
  #only("6")[
    #voiceover("To find f prime of zero, we simply substitute x with zero. This gives us 2 times 0 times e to the 0, plus 0 squared times e to the 0. Since anything times 0 is 0, this simplifies to 0.")
  ]
]