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

  #only("2-")[Step 1: Find a common denominator]
  #v(10pt)
  #only("3-")[$ 5/6 - 1/3 = 5/6 - 2/6 $]

  #only("1")[
    #voiceover("Great job on solving this problem! Let's go through the solution step by step.")
  ]

  #only("2")[
    #voiceover("To subtract fractions, we first need to find a common denominator. In this case, the denominators are 6 and 3.")
  ]

  #only("3")[
    #voiceover("The least common multiple of 6 and 3 is 6. So, we keep 5/6 as is, and convert 1/3 to an equivalent fraction with denominator 6. We do this by multiplying both numerator and denominator by 2, giving us 2/6.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Performing the Subtraction]
  #v(40pt)

  #only("1-")[Step 2: Subtract the numerators]
  #v(10pt)
  #only("2-")[$ 5/6 - 2/6 = 3/6 $]
  #v(20pt)

  #only("3-")[Step 3: Simplify the result]
  #v(10pt)
  #only("4-")[$ 3/6 = 1/2 $]

  #only("1")[
    #voiceover("Now that we have a common denominator, we can subtract the numerators while keeping the denominator the same.")
  ]

  #only("2")[
    #voiceover("Five minus two equals three, so our result is 3/6.")
  ]

  #only("3")[
    #voiceover("Our final step is to simplify this fraction if possible.")
  ]

  #only("4")[
    #voiceover("We can divide both the numerator and denominator by their greatest common factor, which is 3. This gives us our final answer: 1/2.")
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
    #voiceover("So, our final answer is that 5/6 minus 1/3 equals 1/2.")
  ]

  #only("2")[
    #voiceover("To recap, when subtracting fractions, always remember to find a common denominator first, then subtract the numerators while keeping the denominator the same, and finally, simplify your result if possible. Great work on solving this problem!")
  ]
]