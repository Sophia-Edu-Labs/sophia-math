#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Dot Product Calculation]
  #v(40pt)

  #only("1-")[
    Given vectors:
    #v(10pt)
    $vec(a) = (2, 5, 6)$
    #v(10pt)
    $vec(b) = (3, 1, 2)$
  ]

  #v(20pt)

  #only("2-")[
    Dot product formula:
    #v(10pt)
    $vec(a) dot vec(b) = a_1 b_1 + a_2 b_2 + a_3 b_3$
  ]

  #v(20pt)

  #only("3-")[
    Calculation:
    #v(10pt)
    $(2 dot 3) + (5 dot 1) + (6 dot 2)$
  ]

  #v(20pt)

  #only("4-")[
    $= 6 + 5 + 12$
  ]

  #v(20pt)

  #only("5-")[
    $= 23$
  ]

  #only("1")[
    #voiceover("Great job! That's the correct answer. Let's walk through the solution step-by-step. We're given two vectors: a, which is 2, 5, 6, and b, which is 3, 1, 2.")
  ]

  #only("2")[
    #voiceover("To find the dot product, we'll use the formula: a dot b equals a1 times b1, plus a2 times b2, plus a3 times b3. This means we multiply the corresponding components and then add the results.")
  ]

  #only("3")[
    #voiceover("Let's plug in our values. We have 2 times 3, plus 5 times 1, plus 6 times 2.")
  ]

  #only("4")[
    #voiceover("Now, let's calculate each part. 2 times 3 is 6, 5 times 1 is 5, and 6 times 2 is 12. Adding these up...")
  ]

  #only("5")[
    #voiceover("We get 23! And that's our final answer. The dot product of the vectors 2, 5, 6 and 3, 1, 2 is indeed 23.")
  ]
]