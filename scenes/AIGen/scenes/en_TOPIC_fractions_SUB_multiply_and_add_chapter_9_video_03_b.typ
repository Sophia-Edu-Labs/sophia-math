#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("That's okay! Let's go through the correct solution step by step.")
  ]

  #text(size: 30pt, weight: "bold")[Subtracting Fractions]
  #v(40pt)

  #only("2-")[
    #text(size: 24pt)[Problem: $5/8 - 1/8$]
  ]

  #only("2")[
    #voiceover("Our problem is to subtract one-eighth from five-eighths.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 1: Check Denominators]
  #v(40pt)

  #only("1-")[
    - Both fractions have denominator 8 👍
  ]

  #only("1")[
    #voiceover("First, we check the denominators. In this case, both fractions already have the same denominator, 8. This is great because it means we don't need to find a common denominator!")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 2: Subtract Numerators]
  #v(40pt)

  #only("1-")[
    $5/8 - 1/8 = (5-1)/8$
  ]

  #only("2-")[
    $= 4/8$
  ]

  #only("1")[
    #voiceover("When subtracting fractions with the same denominator, we keep the denominator the same and simply subtract the numerators. So, five-eighths minus one-eighth is equal to five minus one, over eight.")
  ]

  #only("2")[
    #voiceover("This gives us four-eighths.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 3: Simplify (Optional)]
  #v(40pt)

  #only("1-")[
    $4/8 = 1/2$
  ]

  #only("2-")[
    - Divide both numerator and denominator by 4
  ]

  #only("1")[
    #voiceover("Our final step is to simplify the fraction if possible. Four-eighths can be simplified to one-half.")
  ]

  #only("2")[
    #voiceover("We can do this by dividing both the numerator and denominator by their greatest common factor, which is 4.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)

  #only("1-")[
    $5/8 - 1/8 = 4/8 = 1/2$
  ]

  #only("1")[
    #voiceover("So, our final answer is that five-eighths minus one-eighth equals four-eighths, which simplifies to one-half. Both four-eighths and one-half are correct answers. Great work on solving this problem!")
  ]
]