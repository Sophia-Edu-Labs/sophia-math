#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Not quite! Let's walk through the correct solution step-by-step to understand the process better.")
  ]

  #text(size: 30pt, weight: "bold")[Subtracting Fractions]
  #v(40pt)

  #only("2-")[#text()[$ 9/10 - 3/10 $]]

  #only("2")[
    #voiceover("We start with the problem: nine-tenths minus three-tenths.")
  ]

  #only("3-")[#align(center)[#text(fill:aqua)[⇓ Same denominator]]]

  #only("3")[
    #voiceover("Notice that both fractions have the same denominator, ten. This means we can subtract the numerators directly.")
  ]

  #only("4-")[#text()[$ (9-3)/10 $]]

  #only("4")[
    #voiceover("So, we subtract the numerators: nine minus three, over ten.")
  ]

  #only("5-")[#text()[$ = 6/10 $]]

  #only("5")[
    #voiceover("This gives us six-tenths.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Simplifying the Result]
  #v(40pt)

  #only("1-")[#text()[$ 6/10 $]]

  #only("1")[
    #voiceover("Now, let's see if we can simplify our result of six-tenths.")
  ]

  #only("2-")[#align(center)[#text(fill:aqua)[⇓ Find common factor]]]

  #only("2")[
    #voiceover("To simplify a fraction, we look for the greatest common factor of the numerator and denominator.")
  ]

  #only("3-")[- 6 = 2 × 3]
  #only("4-")[- 10 = 2 × 5]

  #only("3")[
    #voiceover("Six can be factored as two times three,")
  ]

  #only("4")[
    #voiceover("and ten can be factored as two times five.")
  ]

  #only("5-")[#align(center)[#text(fill:aqua)[⇓ Divide both by common factor]]]

  #only("5")[
    #voiceover("We see that 2 is the greatest common factor. So, we divide both the numerator and denominator by 2.")
  ]

  #only("6-")[#text()[$ (6 ÷ 2)/(10 ÷ 2) = 3/5 $]]

  #only("6")[
    #voiceover("Six divided by two is three, and ten divided by two is five. So, our simplified fraction is three-fifths.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)

  #only("1-")[#text()[$ 9/10 - 3/10 = 6/10 = 3/5 $]]

  #only("1")[
    #voiceover("So, our final answer is three-fifths, which is equivalent to six-tenths.")
  ]

  #only("2-")[- Both forms are correct]
  #only("3-")[- 3/5 is the simplified form]

  #only("2")[
    #voiceover("Both six-tenths and three-fifths are correct answers.")
  ]

  #only("3")[
    #voiceover("However, three-fifths is the simplified form, which is often preferred in mathematical solutions.")
  ]

  #only("4")[
    #voiceover("Great work on solving this fraction subtraction problem!")
  ]
]