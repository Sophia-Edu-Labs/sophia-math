#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Great job! You've correctly identified the derivative. Let's walk through the solution step-by-step to understand how we arrive at this result.")
  ]

  #text(size: 30pt, weight: "bold")[Derivative of $f(x) = 9x^5$]
  #v(40pt)

  #only("2-")[
    - Given function: $f(x) = 9x^5$
  ]

  #only("3-")[
    - Apply constant multiple rule
  ]

  #only("4-")[
    - Use power rule
  ]

  #only("2")[
    #voiceover("We start with the given function f of x equals 9 times x to the power of 5.")
  ]

  #only("3")[
    #voiceover("To find the derivative, we'll apply the constant multiple rule. This rule states that the derivative of a constant times a function is equal to the constant times the derivative of the function.")
  ]

  #only("4")[
    #voiceover("Then, we'll use the power rule to differentiate x to the power of 5.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step-by-Step Solution]
  #v(40pt)

  #only("1-")[
    $f(x) = 9x^5$
  ]

  #only("2-")[
    #align(center)[#text(fill:aqua)[⇓ Constant multiple rule]]
  ]
  #v(10pt)

  #only("3-")[
    $f'(x) = 9 dot (x^5)'$
  ]

  #only("4-")[
    #align(center)[#text(fill:aqua)[⇓ Power rule]]
  ]
  #v(10pt)

  #only("5-")[
    $f'(x) = 9 dot 5x^4$
  ]

  #only("6-")[
    #align(center)[#text(fill:aqua)[⇓ Simplify]]
  ]
  #v(10pt)

  #only("7-")[
    $f'(x) = 45x^4$
  ]

  #only("1")[
    #voiceover("Let's start with our function f of x equals 9 times x to the power of 5.")
  ]

  #only("2")[
    #voiceover("First, we apply the constant multiple rule.")
  ]

  #only("3")[
    #voiceover("This gives us f prime of x equals 9 times the derivative of x to the power of 5.")
  ]

  #only("4")[
    #voiceover("Now, we apply the power rule to x to the power of 5.")
  ]

  #only("5")[
    #voiceover("The power rule states that the derivative of x to the power of n is n times x to the power of n minus 1. So, the derivative of x to the power of 5 is 5 times x to the power of 4.")
  ]

  #only("6")[
    #voiceover("Finally, we simplify our expression.")
  ]

  #only("7")[
    #voiceover("This gives us our final answer: f prime of x equals 45 times x to the power of 4.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Key Takeaways]
  #v(40pt)

  #only("1-")[
    - Constant multiple rule: $(c f(x))' = c dot f'(x)$
  ]

  #only("2-")[
    - Power rule: $(x^n)' = n dot x^(n-1)$
  ]

  #only("3-")[
    - Combine rules for complex functions
  ]

  #only("1")[
    #voiceover("Let's recap the key points. First, the constant multiple rule states that the derivative of a constant c times a function f of x is equal to c times the derivative of f of x.")
  ]

  #only("2")[
    #voiceover("Second, the power rule states that the derivative of x to the power of n is n times x to the power of n minus 1.")
  ]

  #only("3")[
    #voiceover("Finally, remember that we often need to combine these rules when differentiating more complex functions. Practice applying these rules, and you'll become more confident in calculating derivatives!")
  ]
]