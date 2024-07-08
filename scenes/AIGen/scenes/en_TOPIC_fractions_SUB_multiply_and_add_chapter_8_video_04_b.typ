#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Adding Fractions with Common Denominators]
  #v(40pt)

  #only("1-")[
    #text(size: 24pt)[Given: $1/4 + 2/5$]
  ]

  #only("1")[
    #voiceover("Nice try! Let's go through the correct solution step-by-step.")
  ]

  #only("2-")[
    #text(size: 24pt)[Step 1: Find a common denominator]
  ]

  #only("2")[
    #voiceover("The first step in adding fractions is to find a common denominator. In this case, we need to find the least common multiple of 4 and 5.")
  ]

  #only("3-")[
    #text(size: 24pt)[LCM(4, 5) = 20]
  ]

  #only("3")[
    #voiceover("The least common multiple of 4 and 5 is 20. This will be our new denominator.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Converting Fractions]
  #v(40pt)

  #only("1-")[
    #text(size: 24pt)[Step 2: Convert fractions to equivalent fractions with denominator 20]
  ]

  #only("1")[
    #voiceover("Now, we need to convert each fraction to an equivalent fraction with the denominator 20.")
  ]

  #only("2-")[
    $1/4 = (1 dot 5)/(4 dot 5) = 5/20$
  ]

  #only("2")[
    #voiceover("For one-fourth, we multiply both the numerator and denominator by 5. This gives us five-twentieths.")
  ]

  #only("3-")[
    $2/5 = (2 dot 4)/(5 dot 4) = 8/20$
  ]

  #only("3")[
    #voiceover("For two-fifths, we multiply both the numerator and denominator by 4. This gives us eight-twentieths.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Adding the Fractions]
  #v(40pt)

  #only("1-")[
    #text(size: 24pt)[Step 3: Add the numerators, keep the common denominator]
  ]

  #only("1")[
    #voiceover("Now that we have fractions with the same denominator, we can add them by simply adding the numerators and keeping the common denominator.")
  ]

  #only("2-")[
    $5/20 + 8/20 = (5 + 8)/20 = 13/20$
  ]

  #only("2")[
    #voiceover("Five-twentieths plus eight-twentieths equals thirteen-twentieths.")
  ]

  #only("3-")[
    #text(size: 24pt)[Final answer: $13/20$]
  ]

  #only("3")[
    #voiceover("Therefore, our final answer is thirteen-twentieths.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Simplification Check]
  #v(40pt)

  #only("1-")[
    #text(size: 24pt)[Step 4: Check if the fraction can be simplified]
  ]

  #only("1")[
    #voiceover("As a final step, we should always check if our fraction can be simplified further.")
  ]

  #only("2-")[
    #text(size: 24pt)[13 and 20 have no common factors other than 1]
  ]

  #only("2")[
    #voiceover("In this case, 13 and 20 have no common factors other than 1, so our fraction thirteen-twentieths is already in its simplest form.")
  ]

  #only("3-")[
    #text(size: 24pt)[Therefore, $13/20$ is the final, simplified answer.]
  ]

  #only("3")[
    #voiceover("Therefore, thirteen-twentieths is our final, simplified answer. Well done on solving this problem!")
  ]
]