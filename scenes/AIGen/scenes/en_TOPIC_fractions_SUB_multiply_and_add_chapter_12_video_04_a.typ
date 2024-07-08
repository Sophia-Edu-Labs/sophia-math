#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Adding Fractions]
  #v(40pt)

  #only("1-")[Exercise: $1/4 + 1/2$]
  #v(20pt)

  #only("1")[
    #voiceover("Great job! You've correctly solved this problem. Let's walk through the solution step by step to understand why 1/4 + 1/2 equals 3/4.")
  ]

  #only("2-")[Step 1: Find a common denominator]
  #v(10pt)
  #only("3-")[- Least Common Multiple (LCM) of 4 and 2 is 4]
  
  #only("2")[
    #voiceover("The first step in adding fractions is to find a common denominator. We need to find the least common multiple of 4 and 2.")
  ]
  
  #only("3")[
    #voiceover("The least common multiple of 4 and 2 is 4. This means we'll use 4 as our common denominator.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Converting Fractions]
  #v(40pt)

  #only("1-")[Step 2: Convert fractions to equivalent fractions with common denominator]
  #v(20pt)
  #only("2-")[- $1/4$ stays as $1/4$]
  #v(10pt)
  #only("3-")[- $1/2 = 2/4$ (multiply numerator and denominator by 2)]

  #only("1")[
    #voiceover("Now, we need to convert our fractions so they both have a denominator of 4.")
  ]

  #only("2")[
    #voiceover("One-fourth already has a denominator of 4, so it stays the same.")
  ]

  #only("3")[
    #voiceover("For one-half, we multiply both the numerator and denominator by 2 to get an equivalent fraction. This gives us two-fourths.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Adding the Fractions]
  #v(40pt)

  #only("1-")[Step 3: Add the numerators, keep the common denominator]
  #v(20pt)
  #only("2-")[$ 1/4 + 2/4 = 3/4 $]

  #only("1")[
    #voiceover("Now that we have fractions with the same denominator, we can add them together.")
  ]

  #only("2")[
    #voiceover("We add the numerators: 1 plus 2 equals 3. The denominator stays the same. So, one-fourth plus two-fourths equals three-fourths.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)

  #only("1-")[$ 1/4 + 1/2 = 3/4 $]
  #v(20pt)
  #only("2-")[✅ Correct!]

  #only("1")[
    #voiceover("Therefore, one-fourth plus one-half equals three-fourths.")
  ]

  #only("2")[
    #voiceover("You got it right! This problem demonstrates how to add fractions with different denominators. Remember, always find a common denominator first, then add the numerators while keeping the common denominator. Great work!")
  ]
]