#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Great job! You've correctly changed the fraction. Let's walk through the solution step-by-step.")
  ]

  #text(size: 30pt, weight: "bold")[Changing Fractions: 5/8 to ?/16]
  #v(40pt)

  #only("2-")[
    $"Original fraction:" 5/8$
  ]

  #only("3-")[
    $"Target denominator:" 16$
  ]

  #only("2")[
    #voiceover("We start with our original fraction, five-eighths.")
  ]

  #only("3")[
    #voiceover("Our goal is to change this fraction to an equivalent one with a denominator of 16.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 1: Find the Multiplier]
  #v(40pt)

  #only("1-")[
    $16 / 8 = 2$
  ]

  #only("2-")[
    #align(center)[#text(fill:aqua)[⇓ Multiply both numerator and denominator by 2]]
  ]

  #only("1")[
    #voiceover("To change the denominator from 8 to 16, we need to multiply it by 2. We can see this because 16 divided by 8 equals 2.")
  ]

  #only("2")[
    #voiceover("Remember, to keep the fraction equivalent, we must multiply both the numerator and denominator by the same number.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 2: Perform the Multiplication]
  #v(40pt)

  #only("1-")[
    $(5 dot 2) / (8 dot 2)$
  ]

  #only("2-")[
    $10 / 16$
  ]

  #only("1")[
    #voiceover("Now, let's multiply both the numerator and denominator by 2. In the numerator, we have 5 times 2, and in the denominator, 8 times 2.")
  ]

  #only("2")[
    #voiceover("This gives us 10 over 16, which is our final answer.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Result]
  #v(40pt)

  #only("1-")[
    $5/8 = 10/16$
  ]

  #only("2-")[
    #align(center)[✅ Equivalent fractions]
  ]

  #only("1")[
    #voiceover("So, we've successfully changed 5/8 to an equivalent fraction with a denominator of 16. The result is 10/16.")
  ]

  #only("2")[
    #voiceover("These fractions are equivalent because we multiplied both the numerator and denominator by the same number, which doesn't change the value of the fraction.")
  ]
]