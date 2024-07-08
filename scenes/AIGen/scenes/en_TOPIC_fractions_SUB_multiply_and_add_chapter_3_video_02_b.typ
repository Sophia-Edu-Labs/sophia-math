#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Not quite. Let's walk through the correct solution step-by-step to understand how to change the fraction.")
  ]

  #text(size: 30pt, weight: "bold")[Changing Fractions: 3/4 to ?/8]

  #v(40pt)

  #only("2-")[
    #text(size: 24pt)[Given: $3/4$]
    #text(size: 24pt)[Target: ?/8]
  ]

  #only("2")[
    #voiceover("We start with the fraction three-fourths and our goal is to change it to an equivalent fraction with a denominator of 8.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 1: Find the Multiplier]

  #v(40pt)

  #only("1-")[
    $"Current denominator" = 4$
    #v(10pt)
    $"Target denominator" = 8$
  ]

  #only("2-")[
    #align(center)[#text(fill:aqua)[⇓ Divide target by current]]
  ]

  #only("3-")[
    $"Multiplier" = 8 / 4 = 2$
  ]

  #only("1")[
    #voiceover("First, we need to find out how to get from our current denominator, 4, to our target denominator, 8.")
  ]

  #only("2")[
    #voiceover("To do this, we divide the target denominator by the current denominator.")
  ]

  #only("3")[
    #voiceover("Eight divided by four equals two. This means we need to multiply both the numerator and denominator by 2 to get an equivalent fraction with 8 as the denominator.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 2: Apply the Multiplier]

  #v(40pt)

  #only("1-")[
    $3/4 = (3 dot 2)/(4 dot 2)$
  ]

  #only("2-")[
    $3/4 = 6/8$
  ]

  #only("1")[
    #voiceover("Now, we apply our multiplier to both the numerator and denominator. Three multiplied by two equals six, and four multiplied by two equals eight.")
  ]

  #only("2")[
    #voiceover("So, three-fourths is equivalent to six-eighths.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Verification]

  #v(40pt)

  #only("1-")[
    $3/4 = 0.75$
    #v(10pt)
    $6/8 = 0.75$
  ]

  #only("2-")[
    #align(center)[#text(fill:green)[✓ Equivalent!]]
  ]

  #only("1")[
    #voiceover("To verify, we can convert both fractions to decimals. Three-fourths equals zero point seven five, and six-eighths also equals zero point seven five.")
  ]

  #only("2")[
    #voiceover("This confirms that our new fraction, six-eighths, is indeed equivalent to the original fraction, three-fourths. Well done on solving this problem!")
  ]
]