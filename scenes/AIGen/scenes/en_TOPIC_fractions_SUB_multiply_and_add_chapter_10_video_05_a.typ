#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Great job! You've correctly solved this subtraction problem. Let's walk through the solution step-by-step to understand how we arrived at the answer.")
  ]

  #text(size: 30pt, weight: "bold")[Subtracting Fractions]
  #v(40pt)

  #only("2-")[$ 7/8 - 3/8 $]
  
  #only("2")[
    #voiceover("We start with the problem: seven-eighths minus three-eighths.")
  ]

  #only("3-")[#text(fill: blue)[Same denominator ✅]]
  
  #only("3")[
    #voiceover("First, we notice that both fractions have the same denominator, 8. This is great because it means we can subtract the numerators directly.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Solution Steps]
  #v(40pt)

  #only("1-")[1️⃣ Subtract numerators]
  #v(10pt)
  #only("2-")[$ 7 - 3 = 4 $]
  #v(20pt)
  #only("3-")[2️⃣ Keep denominator]
  #v(10pt)
  #only("4-")[$ 4/8 $]

  #only("1")[
    #voiceover("Now, let's solve it step by step. First, we subtract the numerators.")
  ]

  #only("2")[
    #voiceover("Seven minus three equals four.")
  ]

  #only("3")[
    #voiceover("Next, we keep the same denominator, which is 8.")
  ]

  #only("4")[
    #voiceover("So, our result is four-eighths.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Simplifying the Result]
  #v(40pt)

  #only("1-")[$ 4/8 $]
  #v(10pt)
  #only("2-")[#text(fill: blue)[Can we simplify? 🤔]]
  #v(10pt)
  #only("3-")[$ 4 / 8 = (4 div 4) / (8 div 4) = 1/2 $]

  #only("1")[
    #voiceover("We've found that seven-eighths minus three-eighths equals four-eighths.")
  ]

  #only("2")[
    #voiceover("But we're not done yet. We should always check if we can simplify our fraction.")
  ]

  #only("3")[
    #voiceover("We can divide both the numerator and denominator by their greatest common factor, which is 4. This gives us one-half.")
  ]

  #only("4-")[#text(fill: green)[Final answer: $ 1/2 $ ✅]]

  #only("4")[
    #voiceover("So, our final simplified answer is one-half. Both four-eighths and one-half are correct, but one-half is in its simplest form.")
  ]
]