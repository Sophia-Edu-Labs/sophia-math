#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Not quite. Let's walk through the solution step-by-step to understand the correct answer.")
  ]

  #text(size: 30pt, weight: "bold")[Changing Fraction Denominator]
  #v(40pt)

  #only("2-")[Original fraction: $7/9$]
  #v(20pt)
  #only("3-")[Target denominator: $18$]

  #only("2")[
    #voiceover("We start with our original fraction, seven-ninths.")
  ]

  #only("3")[
    #voiceover("Our goal is to change this fraction to an equivalent one with a denominator of 18.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Finding the Multiplier]
  #v(40pt)

  #only("1-")[To change $9 arrow 18$:]
  #v(20pt)
  #only("2-")[Find $x$: $9 dot x = 18$]
  #v(20pt)
  #only("3-")[Solve: $x = 18/9 = 2$]

  #only("1")[
    #voiceover("To change the denominator from 9 to 18, we need to find what number we multiply 9 by to get 18.")
  ]

  #only("2")[
    #voiceover("We can express this as an equation: 9 times x equals 18.")
  ]

  #only("3")[
    #voiceover("Solving this equation, we find that x equals 18 divided by 9, which is 2.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Applying the Multiplier]
  #v(40pt)

  #only("1-")[Multiply both numerator and denominator by 2:]
  #v(20pt)
  #only("2-")[$(7 dot 2)/(9 dot 2)$]
  #v(20pt)
  #only("3-")[$ = 14/18$]

  #only("1")[
    #voiceover("Now that we know we need to multiply by 2, we apply this to both the numerator and denominator of our original fraction.")
  ]

  #only("2")[
    #voiceover("This gives us 7 times 2 over 9 times 2.")
  ]

  #only("3")[
    #voiceover("Which simplifies to 14 over 18.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Result]
  #v(40pt)

  #only("1-")[Original: $7/9$]
  #v(20pt)
  #only("2-")[Equivalent: $14/18$]
  #v(20pt)
  #only("3-")[✅ Denominator is now 18]

  #only("1")[
    #voiceover("So, we've successfully changed our original fraction, seven-ninths,")
  ]

  #only("2")[
    #voiceover("to an equivalent fraction, fourteen-eighteenths.")
  ]

  #only("3")[
    #voiceover("We've achieved our goal of creating an equivalent fraction with a denominator of 18. Well done!")
  ]
]