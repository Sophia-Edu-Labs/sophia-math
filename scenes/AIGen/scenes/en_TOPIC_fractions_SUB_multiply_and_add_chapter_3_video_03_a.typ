#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Great job! You've correctly changed the fraction. Let's go through the solution step by step.")
  ]

  #text(size: 30pt, weight: "bold")[Changing Fractions: Same Value, Different Denominator]
  #v(40pt)

  #only("2-")[
    Original fraction: $2/5$
  ]
  #v(20pt)
  #only("3-")[
    Target denominator: $10$
  ]

  #only("2")[
    #voiceover("We start with our original fraction, two-fifths.")
  ]
  #only("3")[
    #voiceover("Our goal is to change this fraction to an equivalent one with a denominator of 10.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 1: Find the Multiplier]
  #v(40pt)

  #only("1-")[
    $10 / 5 = 2$
  ]
  #v(20pt)
  #only("2-")[
    Multiplier: $2$
  ]

  #only("1")[
    #voiceover("To find our multiplier, we divide the target denominator, 10, by our current denominator, 5.")
  ]
  #only("2")[
    #voiceover("This gives us 2. This means we need to multiply both the numerator and denominator by 2 to get an equivalent fraction with the desired denominator.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 2: Apply the Multiplier]
  #v(40pt)

  #only("1-")[
    $2/5 = (2 dot 2) / (5 dot 2)$
  ]
  #v(20pt)
  #only("2-")[
    $= 4/10$
  ]

  #only("1")[
    #voiceover("Now, we multiply both the numerator and denominator by 2. Two times 2 in the numerator, and 5 times 2 in the denominator.")
  ]
  #only("2")[
    #voiceover("This gives us 4 over 10, which is our final answer.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Result]
  #v(40pt)

  #only("1-")[
    $2/5 = 4/10$
  ]
  #v(20pt)
  #only("2-")[
    ✅ Equivalent fraction
  ]
  #v(20pt)
  #only("3-")[
    ✅ Denominator of 10
  ]

  #only("1")[
    #voiceover("So, we've successfully changed 2 fifths to 4 tenths.")
  ]
  #only("2")[
    #voiceover("This new fraction is equivalent to our original fraction, meaning they represent the same value.")
  ]
  #only("3")[
    #voiceover("And we've achieved our goal of having a denominator of 10. Well done!")
  ]
]