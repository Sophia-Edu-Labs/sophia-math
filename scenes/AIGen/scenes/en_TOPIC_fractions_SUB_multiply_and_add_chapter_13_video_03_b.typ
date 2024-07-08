#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Changing Fractions: Same Value, Different Denominator]
  #v(40pt)

  #only("1-")[Original fraction: $5/6$]
  #v(20pt)
  #only("2-")[Target denominator: $12$]

  #only("1")[
    #voiceover("Not quite, but let's go through the solution step by step to understand how we change five-sixths to an equivalent fraction with a denominator of 12.")
  ]

  #only("2")[
    #voiceover("We start with the fraction five-sixths, and our goal is to create an equivalent fraction with a denominator of 12.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Finding the Multiplier]
  #v(40pt)

  #only("1-")[Step 1: Divide target denominator by original denominator]
  #v(20pt)
  #only("2-")[$12 / 6 = 2$]
  #v(20pt)
  #only("3-")[Multiplier: $2$]

  #only("1")[
    #voiceover("To find our multiplier, we divide the target denominator by the original denominator.")
  ]

  #only("2")[
    #voiceover("So, we divide 12 by 6, which equals 2.")
  ]

  #only("3")[
    #voiceover("This means we need to multiply both the numerator and denominator by 2 to get our new fraction.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Applying the Multiplier]
  #v(40pt)

  #only("1-")[Step 2: Multiply both numerator and denominator by 2]
  #v(20pt)
  #only("2-")[$5/6 = (5 dot 2)/(6 dot 2)$]
  #v(20pt)
  #only("3-")[$= 10/12$]

  #only("1")[
    #voiceover("Now, let's apply our multiplier to both the numerator and denominator of the original fraction.")
  ]

  #only("2")[
    #voiceover("We multiply 5 by 2 in the numerator, and 6 by 2 in the denominator.")
  ]

  #only("3")[
    #voiceover("This gives us the fraction ten-twelfths, which is equivalent to five-sixths but now has a denominator of 12.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Verifying the Result]
  #v(40pt)

  #only("1-")[Original fraction: $5/6 = 0.8333...$]
  #v(20pt)
  #only("2-")[New fraction: $10/12 = 0.8333...$]
  #v(20pt)
  #only("3-")[✅ Equivalent fractions!]

  #only("1")[
    #voiceover("Let's verify our result. The original fraction, five-sixths, as a decimal is approximately 0.8333...")
  ]

  #only("2")[
    #voiceover("Our new fraction, ten-twelfths, also equals approximately 0.8333...")
  ]

  #only("3")[
    #voiceover("This confirms that we've successfully changed five-sixths to an equivalent fraction with a denominator of 12. Well done!")
  ]
]