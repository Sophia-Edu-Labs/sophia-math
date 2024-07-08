#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Changing Fractions: New Denominator]
  #v(40pt)

  #only("1-")[Original fraction: $2/3$]
  #v(20pt)
  #only("2-")[Target denominator: $9$]

  #only("1")[
    #voiceover("Great job! You've correctly changed the fraction. Let's go through the solution step by step.")
  ]

  #only("2")[
    #voiceover("We start with the fraction two-thirds and our goal is to change it to an equivalent fraction with a denominator of 9.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 1: Find the Multiplier]
  #v(40pt)

  #only("1-")[Find $n$ where: $3 dot n = 9$]
  #v(20pt)
  #only("2-")[Solve: $n = 9/3 = 3$]

  #only("1")[
    #voiceover("First, we need to find what number we multiply the original denominator by to get the new denominator.")
  ]

  #only("2")[
    #voiceover("We can see that 3 times 3 equals 9, so our multiplier is 3.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 2: Apply the Multiplier]
  #v(40pt)

  #only("1-")[Multiply both numerator and denominator by 3:]
  #v(20pt)
  #only("2-")[$(2 dot 3)/(3 dot 3) = 6/9$]

  #only("1")[
    #voiceover("Now, to keep the fraction equivalent, we multiply both the numerator and denominator by our multiplier, 3.")
  ]

  #only("2")[
    #voiceover("Two times three in the numerator gives us 6, and three times three in the denominator gives us 9.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Result]
  #v(40pt)

  #only("1-")[Original fraction: $2/3$]
  #v(20pt)
  #only("2-")[Equivalent fraction: $6/9$]
  #v(20pt)
  #only("3-")[✅ Denominator is now 9]

  #only("1")[
    #voiceover("So, we've successfully changed our original fraction, two-thirds,")
  ]

  #only("2")[
    #voiceover("to the equivalent fraction six-ninths.")
  ]

  #only("3")[
    #voiceover("We've achieved our goal of creating an equivalent fraction with a denominator of 9.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Key Takeaway]
  #v(40pt)

  #only("1-")[To change a fraction's denominator:]
  #v(20pt)
  #only("2-")[1. Find the multiplier]
  #v(20pt)
  #only("3-")[2. Multiply both numerator and denominator]
  #v(20pt)
  #only("4-")[3. Result is an equivalent fraction]

  #only("1")[
    #voiceover("Let's recap the key steps to change a fraction's denominator:")
  ]

  #only("2")[
    #voiceover("First, find the number that multiplies the old denominator to get the new one.")
  ]

  #only("3")[
    #voiceover("Then, multiply both the numerator and denominator by this number.")
  ]

  #only("4")[
    #voiceover("The result is an equivalent fraction with the desired denominator.")
  ]
]