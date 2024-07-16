#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Not quite. Let's walk through the correct solution step by step.")
  ]

  #text(size: 30pt, weight: "bold")[Multiplying a Whole Number by a Fraction]

  #v(40pt)

  #only("2-")[#text()[Problem: $ 5 dot 3/4 $]]

  #only("2")[
    #voiceover("We're multiplying 5 by three-fourths.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 1: Identify the Components]

  #v(40pt)

  #only("1-")[- Whole number: 5]
  #v(10pt)
  #only("2-")[- Fraction: $ 3/4 $]

  #only("1")[
    #voiceover("First, let's identify our components. We have the whole number 5")
  ]

  #only("2")[
    #voiceover("and the fraction three-fourths.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Step 2: Multiply]

  #v(40pt)

  #only("1-")[$ 5 dot 3/4 = (5 dot 3)/4 $]

  #only("1")[
    #voiceover("Now, we multiply. When multiplying a whole number by a fraction, we multiply the whole number by the numerator and keep the denominator the same. So, 5 times three-fourths equals 5 times 3, over 4.")
  ]

  #v(20pt)

  #only("2-")[$ = 15/4 $]

  #only("2")[
    #voiceover("This simplifies to fifteen-fourths.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]

  #v(40pt)

  #only("1-")[$ 5 dot 3/4 = 15/4 $]

  #only("1")[
    #voiceover("So, our final answer is fifteen-fourths. This is an improper fraction, which means the numerator is larger than the denominator. We could also express this as a mixed number, but that's a topic for another time.")
  ]

  #v(20pt)

  #only("2-")[💡 Remember: When multiplying a whole number by a fraction, multiply the whole number by the numerator and keep the denominator the same.]

  #only("2")[
    #voiceover("Remember, when multiplying a whole number by a fraction, we always multiply the whole number by the numerator and keep the denominator the same. This rule makes these types of calculations much simpler!")
  ]
]