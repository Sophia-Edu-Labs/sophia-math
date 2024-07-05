#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Power Rule for Derivatives]
  #v(40pt)

  #only("1-")[Exercise: Find the derivative of $f(x) = 5x^4$]
  
  #only("1")[
    #voiceover("Great job! You've correctly identified the derivative. Let's walk through the solution step-by-step to understand how we arrived at this result.")
  ]

  #only("2-")[Solution: $f'(x) = 20x^3$]

  #only("2")[
    #voiceover("The derivative of f of x equals twenty x cubed. Let's break down how we got this answer.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Applying the Power Rule]
  #v(40pt)

  #only("1-")[Power Rule: If $f(x) = x^n$, then $f'(x) = n dot x^(n-1)$]

  #only("1")[
    #voiceover("We'll use the power rule to solve this. The power rule states that if f of x equals x to the power of n, then the derivative, f prime of x, equals n times x to the power of n minus 1.")
  ]

  #only("2-")[For $f(x) = 5x^4$:]
  #only("3-")[1. Identify $n$: Here, $n = 4$]
  #only("4-")[2. Multiply by $n$: $4 dot 5 = 20$]
  #only("5-")[3. Decrease power by 1: $x^(4-1) = x^3$]

  #only("2")[
    #voiceover("Let's apply this to our function, f of x equals five x to the fourth power.")
  ]

  #only("3")[
    #voiceover("First, we identify n, which is the power of x. Here, n equals 4.")
  ]

  #only("4")[
    #voiceover("Next, we multiply the coefficient by n. That's 4 times 5, which equals 20.")
  ]

  #only("5")[
    #voiceover("Finally, we decrease the power of x by 1. So x to the fourth becomes x cubed.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Result]
  #v(40pt)

  #only("1-")[$ f'(x) = 20x^3 $]

  #only("1")[
    #voiceover("Putting it all together, we get f prime of x equals twenty x cubed.")
  ]

  #only("2-")[Key Points:
  - Coefficient: $20 = 4 dot 5$
  - Power: $3 = 4 - 1$]

  #only("2")[
    #voiceover("Let's highlight two key points. First, the coefficient 20 comes from multiplying the original coefficient 5 by the power 4. Second, the new power 3 is one less than the original power 4.")
  ]

  #only("3")[
    #voiceover("Great work on mastering the power rule! This technique will be crucial as we explore more complex derivatives in the future.")
  ]
]