#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Great job! You've correctly added these fractions. Let's go through the solution step by step to understand how we arrived at the answer.")
  ]

  #text(size: 30pt, weight: "bold")[Adding Fractions: 5/12 + 3/12]
  #v(40pt)

  #only("2-")[
    $5/12 + 3/12$
  ]

  #only("2")[
    #voiceover("We start with the problem: five twelfths plus three twelfths.")
  ]

  #only("3-")[
    #align(center)[#text(fill:aqua)[⇓ Check denominators]]
  ]

  #only("3")[
    #voiceover("First, we check the denominators. In this case, both fractions already have the same denominator of 12, so we don't need to find a common denominator.")
  ]

  #only("4-")[
    #align(center)[#text(fill:aqua)[⇓ Add numerators]]
  ]

  #only("4")[
    #voiceover("When adding fractions with the same denominator, we simply add the numerators and keep the denominator the same.")
  ]

  #only("5-")[
    $(5 + 3)/12$
  ]

  #only("5")[
    #voiceover("So, we add 5 and 3 in the numerator, which gives us 8, and keep 12 as the denominator.")
  ]

  #only("6-")[
    $= 8/12$
  ]

  #only("6")[
    #voiceover("This gives us eight twelfths as our result.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Simplifying the Result]
  #v(40pt)

  #only("1-")[
    $8/12$
  ]

  #only("1")[
    #voiceover("Now that we have our result of eight twelfths, let's see if we can simplify this fraction further.")
  ]

  #only("2-")[
    #align(center)[#text(fill:aqua)[⇓ Find common factor]]
  ]

  #only("2")[
    #voiceover("To simplify, we look for the greatest common factor of the numerator and denominator.")
  ]

  #only("3-")[
    $8 = 2 × 2 × 2$
    #v(10pt)
    $12 = 2 × 2 × 3$
  ]

  #only("3")[
    #voiceover("We can factor 8 as 2 times 2 times 2, and 12 as 2 times 2 times 3.")
  ]

  #only("4-")[
    #align(center)[#text(fill:aqua)[⇓ Divide both by common factor]]
  ]

  #only("4")[
    #voiceover("The greatest common factor is 4, which is 2 times 2.")
  ]

  #only("5-")[
    $(8 ÷ 4)/(12 ÷ 4) = 2/3$
  ]

  #only("5")[
    #voiceover("Dividing both the numerator and denominator by 4, we get 2 thirds.")
  ]

  #only("6-")[
    $8/12 = 2/3$
  ]

  #only("6")[
    #voiceover("Therefore, eight twelfths simplifies to two thirds, which is our final answer.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)

  #only("1-")[
    $5/12 + 3/12 = 8/12 = 2/3$
  ]

  #only("1")[
    #voiceover("To summarize, five twelfths plus three twelfths equals eight twelfths, which simplifies to two thirds.")
  ]

  #only("2-")[
    - Same denominator: add numerators
    - Simplify result if possible
  ]

  #only("2")[
    #voiceover("Remember, when adding fractions with the same denominator, we add the numerators and keep the denominator the same. Then, we simplify the result if possible.")
  ]

  #only("3")[
    #voiceover("Great job on solving this problem! Keep practicing, and you'll become an expert at adding fractions in no time.")
  ]
]