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

  #text(size: 30pt, weight: "bold")[Subtracting Fractions]
  #v(40pt)

  #only("2-")[
    #text(size: 24pt)[Given: $5/4 - 3/4$]
  ]

  #only("2")[
    #voiceover("We're given the problem of subtracting three-fourths from five-fourths.")
  ]

  #only("3-")[
    #text(size: 24pt)[Step 1: Check denominators]
  ]

  #only("3")[
    #voiceover("First, we check the denominators. In this case, both fractions already have the same denominator of 4, so we don't need to find a common denominator.")
  ]

  #only("4-")[
    #text(size: 24pt)[Step 2: Subtract numerators]
  ]

  #only("4")[
    #voiceover("Since the denominators are the same, we can directly subtract the numerators while keeping the denominator the same.")
  ]

  #only("5-")[
    $ 5/4 - 3/4 = (5-3)/4 = 2/4 $
  ]

  #only("5")[
    #voiceover("Five minus three equals two, so our result is two-fourths.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Simplifying the Result]
  #v(40pt)

  #only("1-")[
    #text(size: 24pt)[Step 3: Simplify if possible]
  ]

  #only("1")[
    #voiceover("Now, let's see if we can simplify our result of two-fourths.")
  ]

  #only("2-")[
    $ 2/4 = 1/2 $
  ]

  #only("2")[
    #voiceover("Two-fourths can be simplified by dividing both the numerator and denominator by their greatest common factor, which is 2.")
  ]

  #only("3-")[
    #text(size: 24pt)[Final Answer: $2/4$ or $1/2$]
  ]

  #only("3")[
    #voiceover("So, our final answer can be expressed as either two-fourths or one-half. Both are correct!")
  ]

  #only("4")[
    #voiceover("Remember, when subtracting fractions with the same denominator, we keep the denominator the same and just subtract the numerators. Always check if your final answer can be simplified further.")
  ]
]