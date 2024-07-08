#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Great job! You've correctly changed the fraction. Let's walk through the solution step-by-step to understand how we got there.")
  ]

  #text(size: 30pt, weight: "bold")[Changing Fraction Denominator]
  #v(40pt)

  #only("2-")[
    Original fraction: $7/8$
  ]
  #v(20pt)
  #only("3-")[
    Target denominator: $16$
  ]

  #only("2")[
    #voiceover("We start with our original fraction, seven-eighths.")
  ]
  #only("3")[
    #voiceover("Our goal is to change this fraction to an equivalent one with a denominator of 16.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Finding the Multiplier]
  #v(40pt)

  #only("1-")[
    $16 / 8 = 2$
  ]
  #v(20pt)
  #only("2-")[
    Multiplier: $2$
  ]

  #only("1")[
    #voiceover("To find our multiplier, we divide the target denominator by the original denominator. Sixteen divided by eight equals two.")
  ]
  #only("2")[
    #voiceover("This means we need to multiply both the numerator and denominator by two to get an equivalent fraction with the desired denominator.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Applying the Multiplier]
  #v(40pt)

  #only("1-")[
    $7/8 = (7 dot 2) / (8 dot 2)$
  ]
  #v(20pt)
  #only("2-")[
    $= 14/16$
  ]

  #only("1")[
    #voiceover("Now, we multiply both the numerator and denominator by two. Seven times two in the numerator, and eight times two in the denominator.")
  ]
  #only("2")[
    #voiceover("This gives us fourteen sixteenths, which is our final answer.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Result]
  #v(40pt)

  #only("1-")[
    $7/8 = 14/16$
  ]
  #v(20pt)
  #only("2-")[
    ✅ Equivalent fraction
  ]
  #v(20pt)
  #only("3-")[
    ✅ Denominator of 16
  ]

  #only("1")[
    #voiceover("So, we've successfully changed seven-eighths to fourteen-sixteenths.")
  ]
  #only("2")[
    #voiceover("This new fraction is equivalent to our original fraction,")
  ]
  #only("3")[
    #voiceover("and it has the target denominator of sixteen. Well done on solving this problem!")
  ]
]