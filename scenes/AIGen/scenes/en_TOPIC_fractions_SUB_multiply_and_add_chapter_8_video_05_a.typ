#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Adding Fractions with Same Denominators]
  #v(40pt)

  #only("1-")[
    #align(center)[
      $7/8 + 4/8$
    ]
  ]

  #only("1")[
    #voiceover("Great job on solving this problem! Let's go through the solution step by step. We're adding the fractions 7/8 and 4/8.")
  ]

  #only("2-")[
    #align(center)[
      $7/8 + 4/8 = (7+4)/8$
    ]
  ]

  #only("2")[
    #voiceover("When adding fractions with the same denominator, we keep the denominator the same and add the numerators.")
  ]

  #only("3-")[
    #align(center)[
      $(7+4)/8 = 11/8$
    ]
  ]

  #only("3")[
    #voiceover("Seven plus four equals eleven, so our result is 11/8.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Simplifying the Result]
  #v(40pt)

  #only("1-")[
    #align(center)[
      $11/8 = 1 3/8$
    ]
  ]

  #only("1")[
    #voiceover("Now, let's simplify our result. 11/8 can be written as a mixed number.")
  ]

  #only("2-")[
    - 11 ÷ 8 = 1 remainder 3
    #v(10pt)
    - 1 whole + 3/8
  ]

  #only("2")[
    #voiceover("To do this, we divide 11 by 8. This gives us 1 with a remainder of 3. So, we have 1 whole plus 3/8.")
  ]

  #only("3-")[
    #align(center)[
      $11/8 = 1 3/8$
    ]
  ]

  #only("3")[
    #voiceover("Therefore, our final answer is 1 and 3/8.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Checking Our Work]
  #v(40pt)

  #only("1-")[
    Original problem: $7/8 + 4/8$
    #v(10pt)
    Our solution: $11/8$ or $1 3/8$
  ]

  #only("1")[
    #voiceover("Let's quickly review our work. We started with 7/8 plus 4/8, and we ended up with 11/8, which can also be written as 1 and 3/8.")
  ]

  #only("2-")[
    #align(center)[
      $7/8 + 4/8 = 11/8 = 1 3/8$
    ]
  ]

  #only("2")[
    #voiceover("This solution makes sense because we've added two fractions that are each less than 1, and we got a result that's greater than 1 but less than 2.")
  ]

  #only("3")[
    #voiceover("Great job on solving this problem! Remember, when adding fractions with the same denominator, we keep the denominator and add the numerators. Then, we can simplify if possible.")
  ]
]