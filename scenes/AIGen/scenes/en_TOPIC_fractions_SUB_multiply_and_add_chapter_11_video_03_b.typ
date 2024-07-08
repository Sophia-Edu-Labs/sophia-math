#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Not quite. Let's walk through the correct solution step-by-step to understand it better.")
  ]

  #text(size: 30pt, weight: "bold")[Subtracting Fractions with Common Denominators]
  #v(40pt)

  #only("2-")[$ 3/4 - 2/5 $]
  #v(20pt)

  #only("2")[
    #voiceover("We start with the problem: three-fourths minus two-fifths. The first step is to recognize that these fractions have different denominators.")
  ]

  #only("3-")[#text(fill: red)[⚠ Different denominators]]
  #v(20pt)

  #only("3")[
    #voiceover("When subtracting fractions with different denominators, we need to find a common denominator first.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Finding a Common Denominator]
  #v(40pt)

  #only("1-")[- Least Common Multiple (LCM) of 4 and 5]
  #v(20pt)
  #only("2-")[$ "LCM"(4, 5) = 20 $]
  #v(20pt)

  #only("1")[
    #voiceover("To find a common denominator, we need to calculate the Least Common Multiple (LCM) of 4 and 5.")
  ]

  #only("2")[
    #voiceover("The LCM of 4 and 5 is 20. This will be our new denominator.")
  ]

  #only("3-")[- Convert fractions to equivalent fractions with denominator 20]
  #v(20pt)

  #only("3")[
    #voiceover("Now, we need to convert both fractions to equivalent fractions with the denominator 20.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Converting Fractions]
  #v(40pt)

  #only("1-")[$ 3/4 = (3 dot 5)/(4 dot 5) = 15/20 $]
  #v(20pt)

  #only("1")[
    #voiceover("For three-fourths, we multiply both the numerator and denominator by 5. This gives us fifteen twentieths.")
  ]

  #only("2-")[$ 2/5 = (2 dot 4)/(5 dot 4) = 8/20 $]
  #v(20pt)

  #only("2")[
    #voiceover("For two-fifths, we multiply both the numerator and denominator by 4. This gives us eight twentieths.")
  ]

  #only("3-")[$ 15/20 - 8/20 $]

  #only("3")[
    #voiceover("Now we have converted our original problem to fifteen twentieths minus eight twentieths.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Subtracting Fractions]
  #v(40pt)

  #only("1-")[$ 15/20 - 8/20 = (15-8)/20 = 7/20 $]
  #v(20pt)

  #only("1")[
    #voiceover("With the same denominator, we can now subtract the numerators. Fifteen minus eight equals seven, and we keep the denominator of twenty.")
  ]

  #only("2-")[#text(fill: green)[✓ Final answer: $ 7/20 $]]

  #only("2")[
    #voiceover("So, our final answer is seven twentieths. Great job on solving this problem!")
  ]
]