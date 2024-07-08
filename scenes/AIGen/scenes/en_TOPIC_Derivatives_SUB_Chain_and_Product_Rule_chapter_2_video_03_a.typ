#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Excellent work! You've correctly applied both the product rule and chain rule to differentiate this function. Let's walk through the solution step-by-step.")
  ]

  #text(size: 30pt, weight: "bold")[Differentiating $f(x) = x^2 e^(3x)$]
  #v(40pt)

  #only("2-")[- Product Rule: $(u v)' = u' v + u v'$]
  #v(20pt)
  #only("3-")[- Chain Rule: $(e^x)' = e^x$]
  #v(20pt)

  #only("2")[
    #voiceover("To differentiate f of x equals x squared times e to the power of 3x, we'll use the product rule. The product rule states that the derivative of u times v is u prime times v plus u times v prime.")
  ]

  #only("3")[
    #voiceover("We'll also need the chain rule for the exponential part. Remember, the derivative of e to the x is simply e to the x.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Applying the Product Rule]
  #v(40pt)

  #only("1-")[$ f(x) = x^2 dot e^(3x) $]
  #v(20pt)
  #only("2-")[Let $u = x^2$ and $v = e^(3x)$]
  #v(20pt)
  #only("3-")[$ f'(x) = u' v + u v' $]
  #v(20pt)
  #only("4-")[$ f'(x) = (x^2)' dot e^(3x) + x^2 dot (e^(3x))' $]

  #only("1")[
    #voiceover("Let's start by identifying the parts of our function. We have f of x equals x squared times e to the power of 3x.")
  ]

  #only("2")[
    #voiceover("We'll let u equal x squared and v equal e to the power of 3x.")
  ]

  #only("3")[
    #voiceover("Applying the product rule, we get f prime of x equals u prime times v plus u times v prime.")
  ]

  #only("4")[
    #voiceover("Substituting back our original functions, we have the derivative of x squared times e to the power of 3x, plus x squared times the derivative of e to the power of 3x.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Differentiating the Parts]
  #v(40pt)

  #only("1-")[$ (x^2)' = 2x $]
  #v(20pt)
  #only("2-")[$ (e^(3x))' = e^(3x) dot (3x)' = 3e^(3x) $]
  #v(20pt)
  #only("3-")[$ f'(x) = 2x dot e^(3x) + x^2 dot 3e^(3x) $]

  #only("1")[
    #voiceover("Now, let's differentiate each part. The derivative of x squared is 2x.")
  ]

  #only("2")[
    #voiceover("For e to the power of 3x, we use the chain rule. The derivative is e to the power of 3x times the derivative of 3x, which is 3. So we get 3 times e to the power of 3x.")
  ]

  #only("3")[
    #voiceover("Putting it all together, we have f prime of x equals 2x times e to the power of 3x, plus x squared times 3 times e to the power of 3x.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)

  #only("1-")[$ f'(x) = 2x e^(3x) + x^2 (3 e^(3x)) $]
  #v(20pt)
  #only("2-")[$ f'(x) = 2x e^(3x) + 3x^2 e^(3x) $]
  #v(20pt)
  #only("3-")[$ f'(x) = e^(3x) (2x + 3x^2) $]

  #only("1")[
    #voiceover("Our final answer is f prime of x equals 2x times e to the power of 3x, plus x squared times 3 times e to the power of 3x.")
  ]

  #only("2")[
    #voiceover("We can simplify this slightly by combining the x squared and the 3.")
  ]

  #only("3")[
    #voiceover("If we want, we can factor out e to the power of 3x, giving us e to the power of 3x times the quantity 2x plus 3x squared. This completes our solution!")
  ]
]