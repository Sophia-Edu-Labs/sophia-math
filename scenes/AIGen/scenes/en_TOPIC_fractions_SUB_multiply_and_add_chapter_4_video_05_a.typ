#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Great job! You've correctly changed the fraction. Let's go through the solution step by step to understand how we arrived at this answer.")
  ]

  #text(size: 30pt, weight: "bold")[Changing Fractions: 3/5 to ?/15]
  #v(40pt)

  #only("2-")[
    - Original fraction: $3/5$
  ]
  #v(20pt)
  #only("3-")[
    - Target denominator: $15$
  ]

  #only("2")[
    #voiceover("We start with our original fraction, three-fifths.")
  ]
  #only("3")[
    #voiceover("Our goal is to change this fraction to an equivalent one with a denominator of fifteen.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Finding the Multiplier]
  #v(40pt)

  #only("1-")[
    $5 × ? = 15$
  ]
  #v(20pt)
  #only("2-")[
    $5 × 3 = 15$
  ]
  #v(20pt)
  #only("3-")[
    Multiplier: $3$
  ]

  #only("1")[
    #voiceover("To find our multiplier, we need to determine what number, when multiplied by 5, gives us 15.")
  ]
  #only("2")[
    #voiceover("We can see that 5 times 3 equals 15.")
  ]
  #only("3")[
    #voiceover("So, our multiplier is 3.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Applying the Multiplier]
  #v(40pt)

  #only("1-")[
    $3/5 = (3 × 3)/(5 × 3)$
  ]
  #v(20pt)
  #only("2-")[
    $= 9/15$
  ]

  #only("1")[
    #voiceover("Now, we apply this multiplier to both the numerator and denominator of our original fraction. Three-fifths becomes three times three over five times three.")
  ]
  #only("2")[
    #voiceover("This simplifies to nine-fifteenths.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Result]
  #v(40pt)

  #only("1-")[
    $3/5 = 9/15$
  ]
  #v(20pt)
  #only("2-")[
    ✅ Equivalent fraction
  ]
  #v(20pt)
  #only("3-")[
    ✅ Denominator of 15
  ]

  #only("1")[
    #voiceover("So, our final result is that three-fifths is equal to nine-fifteenths.")
  ]
  #only("2")[
    #voiceover("We've successfully created an equivalent fraction,")
  ]
  #only("3")[
    #voiceover("and achieved our goal of having a denominator of 15.")
  ]
]