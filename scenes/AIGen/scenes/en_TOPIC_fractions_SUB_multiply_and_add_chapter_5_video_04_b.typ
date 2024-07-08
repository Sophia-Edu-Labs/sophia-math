#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Not quite. Let's go through the correct solution step by step to understand how to arrive at the right answer.")
  ]

  #text(size: 30pt, weight: "bold")[Changing Fractions: Same Value, Different Denominator]
  #v(40pt)

  #only("2-")[
    Original fraction: $5/6$
  ]
  #v(20pt)
  #only("3-")[
    Target denominator: $12$
  ]

  #only("2")[
    #voiceover("We start with our original fraction, five-sixths.")
  ]
  #only("3")[
    #voiceover("Our goal is to change this fraction to an equivalent one with a denominator of twelve.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 1: Find the Multiplier]
  #v(40pt)

  #only("1-")[
    $12 / 6 = 2$
  ]
  #v(20pt)
  #only("2-")[
    Multiplier: $2$
  ]

  #only("1")[
    #voiceover("To find our multiplier, we divide the target denominator, twelve, by our current denominator, six.")
  ]
  #only("2")[
    #voiceover("This gives us two. This means we need to multiply both the numerator and denominator by two to get an equivalent fraction with the desired denominator.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 2: Multiply Both Parts]
  #v(40pt)

  #only("1-")[
    $5/6 = (5 dot 2)/(6 dot 2)$
  ]
  #v(20pt)
  #only("2-")[
    $= 10/12$
  ]

  #only("1")[
    #voiceover("Now, we multiply both the numerator and denominator by our multiplier, two.")
  ]
  #only("2")[
    #voiceover("This gives us ten-twelfths, which is equivalent to our original fraction of five-sixths, but now has the desired denominator of twelve.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)

  #only("1-")[
    $5/6 = 10/12$
  ]
  #v(20pt)
  #only("2-")[
    ✅ Equivalent fraction
  ]
  #v(20pt)
  #only("3-")[
    ✅ Denominator of 12
  ]

  #only("1")[
    #voiceover("So, our final answer is ten-twelfths.")
  ]
  #only("2")[
    #voiceover("This fraction is equivalent to five-sixths,")
  ]
  #only("3")[
    #voiceover("and it has the desired denominator of twelve. Great work on solving this problem!")
  ]
]