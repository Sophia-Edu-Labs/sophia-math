#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Constant Multiple Rule]
  #v(40pt)

  #only("1-")[- Given: $f(x) = 4x^4$]
  #v(20pt)
  #only("2-")[- Constant Multiple Rule: $dif/dif x (c dot f(x)) = c dot dif/dif x f(x)$]
  #v(20pt)
  #only("3-")[- $dif/dif x (4x^4) = 4 dot dif/dif x (x^4)$]
  #v(20pt)
  #only("4-")[- $dif/dif x (x^4) = 4x^3$]
  #v(20pt)
  #only("5-")[- $f'(x) = 4 dot 4x^3 = 16x^3$]
  #v(20pt)
  #only("6-")[- At $x = 2$: $f'(2) = 16 dot 2^3 = 16 dot 8 = 128$]

  #only("1")[
    #voiceover("Not quite. Let's review the correct solution step by step. We start with the given function f of x equals 4 times x to the fourth power.")
  ]

  #only("2")[
    #voiceover("We'll use the Constant Multiple Rule, which states that the derivative of a constant times a function is equal to the constant times the derivative of the function.")
  ]

  #only("3")[
    #voiceover("Applying this rule, we can rewrite the derivative as 4 times the derivative of x to the fourth power.")
  ]

  #only("4")[
    #voiceover("Now, we know that the derivative of x to the fourth power is 4 times x cubed.")
  ]

  #only("5")[
    #voiceover("Putting it all together, we get that f prime of x equals 4 times 4x cubed, which simplifies to 16x cubed.")
  ]

  #only("6")[
    #voiceover("Finally, we evaluate this at x equals 2. Plugging in 2 for x, we get 16 times 2 cubed, which is 16 times 8, giving us our final answer of 128.")
  ]
]