#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Excellent work! You've correctly approached this problem. Let's walk through the solution step-by-step to understand how we arrive at the answer.")
  ]

  #text(size: 30pt, weight: "bold")[Product Rule Application]
  #v(40pt)

  #only("2-")[$ f(x) = x^2 ln(x) $]

  #only("2")[
    #voiceover("We start with the function f of x equals x squared times the natural logarithm of x.")
  ]

  #only("3-")[#align(center)[#text(fill: aqua)[⇓ Product Rule]]]

  #only("3")[
    #voiceover("To differentiate this, we'll use the product rule. The product rule states that for two functions u and v, the derivative of their product is u prime times v plus u times v prime.")
  ]

  #only("4-")[$ f'(x) = (x^2)' dot ln(x) + x^2 dot (ln(x))' $]

  #only("4")[
    #voiceover("Applying this to our function, we get: f prime of x equals the derivative of x squared times ln of x, plus x squared times the derivative of ln of x.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step-by-Step Differentiation]
  #v(40pt)

  #only("1-")[$ f'(x) = (x^2)' dot ln(x) + x^2 dot (ln(x))' $]
  #v(20pt)

  #only("2-")[#align(center)[#text(fill: aqua)[⇓ Differentiate $x^2$ and $ln(x)$]]]
  #v(20pt)

  #only("3-")[$ f'(x) = 2x dot ln(x) + x^2 dot 1/x $]
  #v(20pt)

  #only("4-")[#align(center)[#text(fill: aqua)[⇓ Simplify]]]
  #v(20pt)

  #only("5-")[$ f'(x) = 2x ln(x) + x $]

  #only("1")[
    #voiceover("Let's break this down further.")
  ]

  #only("2")[
    #voiceover("We need to differentiate x squared and ln of x separately.")
  ]

  #only("3")[
    #voiceover("The derivative of x squared is 2x, and the derivative of ln of x is 1 over x.")
  ]

  #only("4")[
    #voiceover("Now, let's simplify our expression.")
  ]

  #only("5")[
    #voiceover("The x squared and 1 over x in the second term cancel out, leaving us with just x. So, our final answer is f prime of x equals 2x ln of x plus x.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)

  #only("1-")[$ f'(x) = 2x ln(x) + x $]

  #only("1")[
    #voiceover("And there we have it! The derivative of x squared times ln of x is 2x ln of x plus x. This problem demonstrates the power of the product rule in differentiating more complex functions. Great job on solving this!")
  ]
]