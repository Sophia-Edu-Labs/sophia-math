#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Great job! You've correctly solved this subtraction problem. Let's go through the solution step-by-step to understand why 4/6 or 2/3 is indeed the correct answer.")
  ]

  #text(size: 30pt, weight: "bold")[Subtracting Fractions]
  #v(40pt)

  #only("2-")[
    $5/6 - 1/6$
  ]

  #only("2")[
    #voiceover("We start with our problem: five-sixths minus one-sixth.")
  ]

  #only("3-")[
    #align(center)[#text(fill:aqua)[⇓ Same denominator]]
  ]

  #only("3")[
    #voiceover("Notice that both fractions have the same denominator, six. This makes our subtraction straightforward.")
  ]

  #only("4-")[
    $(5-1)/6$
  ]

  #only("4")[
    #voiceover("When subtracting fractions with the same denominator, we keep the denominator and simply subtract the numerators.")
  ]

  #only("5-")[
    $4/6$
  ]

  #only("5")[
    #voiceover("Five minus one equals four, so our result is four-sixths.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Simplifying the Result]
  #v(40pt)

  #only("1-")[
    $4/6$
  ]

  #only("1")[
    #voiceover("Now, let's see if we can simplify our result, four-sixths.")
  ]

  #only("2-")[
    #align(center)[#text(fill:aqua)[⇓ Find common factor]]
  ]

  #only("2")[
    #voiceover("To simplify a fraction, we look for a common factor in both the numerator and denominator.")
  ]

  #only("3-")[
    $4/6 = (2 dot 2)/(2 dot 3)$
  ]

  #only("3")[
    #voiceover("We can see that 2 is a common factor of both 4 and 6. Let's factor it out.")
  ]

  #only("4-")[
    #align(center)[#text(fill:aqua)[⇓ Cancel common factor]]
  ]

  #only("4")[
    #voiceover("Now we can cancel out the common factor of 2 in both the numerator and denominator.")
  ]

  #only("5-")[
    $2/3$
  ]

  #only("5")[
    #voiceover("This gives us two-thirds, which is equivalent to four-sixths but in its simplest form.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)

  #only("1-")[
    $5/6 - 1/6 = 4/6 = 2/3$
  ]

  #only("1")[
    #voiceover("So, our final answer can be expressed as either four-sixths or two-thirds. Both are correct!")
  ]

  #only("2-")[
    - 4/6: Unsimplified form 📊
    - 2/3: Simplified form ✨
  ]

  #only("2")[
    #voiceover("Four-sixths is the unsimplified form, while two-thirds is the simplified form. It's generally better to give your answer in the simplified form when possible.")
  ]

  #only("3")[
    #voiceover("Great work on solving this fraction subtraction problem! Remember, when subtracting fractions with the same denominator, keep the denominator and subtract the numerators. Then, always check if you can simplify your result.")
  ]
]