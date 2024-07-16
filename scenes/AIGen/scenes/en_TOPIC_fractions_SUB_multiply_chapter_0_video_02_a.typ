#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Multiplying Fractions with Integers]
  #v(40pt)

  #only("1-")[
    #align(center)[$ 3 dot 1/2 $]
  ]

  #only("2-")[
    #align(center)[#text(fill:aqua)[⇓ Multiply numerator by integer]]
  ]

  #only("3-")[
    #align(center)[$ 3 dot 1/2 = (3 dot 1)/2 $]
  ]

  #only("4-")[
    #align(center)[#text(fill:aqua)[⇓ Simplify]]
  ]

  #only("5-")[
    #align(center)[$ (3 dot 1)/2 = 3/2 $]
  ]

  #only("1")[
    #voiceover("Great job! You've correctly multiplied 3 by 1/2. Let's walk through the solution step-by-step.")
  ]

  #only("2")[
    #voiceover("When multiplying an integer by a fraction, we multiply the integer by the numerator of the fraction.")
  ]

  #only("3")[
    #voiceover("In this case, we multiply 3 by the numerator 1. The denominator remains unchanged.")
  ]

  #only("4")[
    #voiceover("Now, let's simplify our expression.")
  ]

  #only("5")[
    #voiceover("Three times one is three, so our final answer is three halves or three over two.")
  ]
]
