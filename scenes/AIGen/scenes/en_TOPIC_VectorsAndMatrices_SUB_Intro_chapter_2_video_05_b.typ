#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Dot Product Calculation]
  #v(40pt)

  #only("1-")[Given vectors: $vec(a) = (1, 1)$ and $vec(b) = (2, 2)$]
  #v(20pt)

  #only("2-")[Dot product formula: $vec(a) dot vec(b) = a_1 b_1 + a_2 b_2$]
  #v(20pt)

  #only("3-")[Calculation:]
  #only("3-")[$vec(a) dot vec(b) = (1 dot 2) + (1 dot 2)$]
  #v(10pt)
  #only("4-")[$= 2 + 2$]
  #v(10pt)
  #only("5-")[$= 4$]

  #only("1")[
    #voiceover("Not quite. Let's go through the correct solution step by step.")
  ]

  #only("2")[
    #voiceover("First, recall the formula for the dot product of two 2D vectors. It's the sum of the products of corresponding components.")
  ]

  #only("3")[
    #voiceover("Now, let's plug in the values. We multiply the first components: 1 times 2, and add that to the product of the second components: 1 times 2.")
  ]

  #only("4")[
    #voiceover("This gives us 2 plus 2.")
  ]

  #only("5")[
    #voiceover("And the final result is 4. This confirms your correct answer!")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Geometric Interpretation]
  #v(40pt)

  #only("1-")[Dot product: $vec(a) dot vec(b) = |vec(a)| |vec(b)| cos(theta)$]
  #v(20pt)

  #only("2-")[For $vec(a) = (1, 1)$ and $vec(b) = (2, 2)$:]
  #v(10pt)
  #only("3-")[$|vec(a)| = sqrt(1^2 + 1^2) = sqrt(2)$]
  #v(10pt)
  #only("4-")[$|vec(b)| = sqrt(2^2 + 2^2) = 2sqrt(2)$]
  #v(10pt)
  #only("5-")[$cos(theta) = 1$ (vectors are parallel)]

  #only("1")[
    #voiceover("The dot product also has a geometric interpretation. It's equal to the product of the magnitudes of the vectors and the cosine of the angle between them.")
  ]

  #only("2")[
    #voiceover("Let's apply this to our vectors.")
  ]

  #only("3")[
    #voiceover("The magnitude of vector a is the square root of 1 squared plus 1 squared, which equals the square root of 2.")
  ]

  #only("4")[
    #voiceover("Similarly, the magnitude of vector b is the square root of 2 squared plus 2 squared, which equals 2 times the square root of 2.")
  ]

  #only("5")[
    #voiceover("The cosine of the angle between these vectors is 1, because they're parallel. This confirms our algebraic result: square root of 2 times 2 times square root of 2 times 1 equals 4.")
  ]
]