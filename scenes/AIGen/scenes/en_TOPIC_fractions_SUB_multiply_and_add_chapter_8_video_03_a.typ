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
    $5/6 + 2/6$
  ]

  #only("1")[
    #voiceover("Great job on solving this problem! Let's walk through the solution step by step. We're adding the fractions five-sixths and two-sixths.")
  ]

  #only("2-")[
    #text(fill: blue)[Step 1: Identify the denominators]
  ]

  #only("2")[
    #voiceover("First, we identify the denominators. In this case, both fractions have a denominator of 6. When the denominators are the same, we can add the fractions directly.")
  ]

  #only("3-")[
    #text(fill: green)[Step 2: Add the numerators]
    #v(10pt)
    $5/6 + 2/6 = (5+2)/6$
  ]

  #only("3")[
    #voiceover("Next, we add the numerators. Five plus two equals seven. We keep the common denominator of six.")
  ]

  #only("4-")[
    #text(fill: orange)[Step 3: Simplify if possible]
    #v(10pt)
    $(5+2)/6 = 7/6$
  ]

  #only("4")[
    #voiceover("Our result is seven-sixths. This fraction is improper because the numerator is larger than the denominator. We can leave it as is or convert it to a mixed number.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Converting to Mixed Number]
  #v(40pt)

  #only("1-")[
    $7/6 = 1 1/6$
  ]

  #only("1")[
    #voiceover("To convert seven-sixths to a mixed number, we divide 7 by 6. The quotient is 1 with a remainder of 1.")
  ]

  #only("2-")[
    #text(fill: purple)[Interpretation:]
    #v(10pt)
    - 1 whole
    - 1/6 remaining
  ]

  #only("2")[
    #voiceover("This gives us 1 whole and one-sixth remaining. So, seven-sixths is equal to one and one-sixth.")
  ]

  #only("3-")[
    #text(fill: red)[Final Answer:]
    #v(10pt)
    $5/6 + 2/6 = 7/6 = 1 1/6$
  ]

  #only("3")[
    #voiceover("Therefore, our final answer can be expressed as either seven-sixths or one and one-sixth. Both forms are correct!")
  ]
]