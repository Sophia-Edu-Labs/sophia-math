#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Subtracting Fractions]
  #v(40pt)

  #only("1-")[Exercise: Subtract 1/3 from 5/6]
  #v(20pt)

  #only("2-")[Step 1: Find common denominator]
  #v(10pt)
  #only("3-")[$ 5/6 - 1/3 = 5/6 - 2/6 $]

  #only("1")[
    #voiceover("No worries, let's go through the correct solution step by step.")
  ]

  #only("2")[
    #voiceover("First, we need to find a common denominator. The denominators are 6 and 3.")
  ]

  #only("3")[
    #voiceover("The least common multiple of 6 and 3 is 6. So, we keep 5/6 as is, and convert 1/3 to an equivalent fraction with denominator 6. We multiply both numerator and denominator by 2, getting 2/6.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Performing the Subtraction]
  #v(40pt)

  #only("1-")[Step 2: Subtract numerators]
  #v(10pt)
  #only("2-")[$ 5/6 - 2/6 = 3/6 $]
  #v(20pt)
  #only("3-")[Step 3: Simplify if possible]
  #v(10pt)
  #only("4-")[$ 3/6 = 1/2 $]

  #only("1")[
    #voiceover("Now that we have a common denominator, we can subtract the numerators.")
  ]

  #only("2")[
    #voiceover("5 minus 2 equals 3, so our result is 3/6.")
  ]

  #only("3")[
    #voiceover("Finally, we check if we can simplify our result.")
  ]

  #only("4")[
    #voiceover("3 and 6 have a common factor of 3. Dividing both the numerator and denominator by 3, we get 1/2 as our final, simplified answer.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)

  #only("1-")[$ 5/6 - 1/3 = 1/2 $]
  #v(20pt)
  #only("2-")[Remember:
    - Find common denominator
    - Subtract numerators
    - Simplify if possible]

  #only("1")[
    #voiceover("So, our final answer is 1/2. Five-sixths minus one-third equals one-half.")
  ]

  #only("2")[
    #voiceover("To recap, when subtracting fractions, remember these key steps: First, find a common denominator. Then, subtract the numerators while keeping the denominator the same. Finally, simplify your result if possible. Great job solving this problem!")
  ]
]