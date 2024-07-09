#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Solving Quadratic Equations]
  #v(40pt)
  #only("1-")[- Equation: $x^2 - 5x + 6 = 0$]
  #v(20pt)
  #only("2-")[- Using p-q formula: $x = -p/2 ± sqrt((p/2)^2 - q)$]
  #v(20pt)
  #only("3-")[- Where $p = -5$ and $q = 6$]
  #only("1")[
    #voiceover("Let's review the correct solution step by step. We start with the equation x squared minus 5x plus 6 equals zero.")
  ]
  #only("2")[
    #voiceover("To solve this, we'll use the p-q formula. This formula states that x equals negative p over 2, plus or minus the square root of p over 2 squared minus q.")
  ]
  #only("3")[
    #voiceover("In our equation, p is equal to negative 5, and q is equal to 6.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Applying the Formula]
  #v(40pt)
  #only("1-")[- $x = -(-5)/2 ± sqrt(((-5)/2)^2 - 6)$]
  #v(20pt)
  #only("2-")[- $x = 5/2 ± sqrt((5/2)^2 - 6)$]
  #v(20pt)
  #only("3-")[- $x = 2.5 ± sqrt(6.25 - 6)$]
  #only("1")[
    #voiceover("Now, let's apply the formula. We substitute negative 5 for p and 6 for q.")
  ]
  #only("2")[
    #voiceover("Simplifying the negative signs, we get 5 over 2 plus or minus the square root of 5 over 2 squared minus 6.")
  ]
  #only("3")[
    #voiceover("Let's calculate further. 5 over 2 is 2.5, and 5 over 2 squared is 6.25.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Calculation]
  #v(40pt)
  #only("1-")[- $x = 2.5 ± sqrt(0.25)$]
  #v(20pt)
  #only("2-")[- $x = 2.5 ± 0.5$]
  #v(20pt)
  #only("3-")[- $x = 2$ or $x = 3$]
  #only("1")[
    #voiceover("Continuing our calculation, we have x equals 2.5 plus or minus the square root of 0.25.")
  ]
  #only("2")[
    #voiceover("The square root of 0.25 is 0.5, so our equation becomes x equals 2.5 plus or minus 0.5.")
  ]
  #only("3")[
    #voiceover("This gives us two solutions: x equals 2 when we subtract 0.5, and x equals 3 when we add 0.5.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Verification]
  #v(40pt)
  #only("1-")[- For $x = 2$: $2^2 - 5(2) + 6 = 4 - 10 + 6 = 0$ ✅]
  #v(20pt)
  #only("2-")[- For $x = 3$: $3^2 - 5(3) + 6 = 9 - 15 + 6 = 0$ ✅]
  #v(20pt)
  #only("3-")[💡 Always verify your solutions!]
  #only("1")[
    #voiceover("Let's verify our solutions. For x equals 2, we substitute this into our original equation. 2 squared minus 5 times 2 plus 6 equals 4 minus 10 plus 6, which indeed equals zero.")
  ]
  #only("2")[
    #voiceover("Similarly, for x equals 3, we get 3 squared minus 5 times 3 plus 6, which is 9 minus 15 plus 6, also equaling zero.")
  ]
  #only("3")[
    #voiceover("Remember, it's always a good practice to verify your solutions by substituting them back into the original equation.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary]
  #v(40pt)
  #only("1-")[- We solved $x^2 - 5x + 6 = 0$ using the p-q formula 🧮]
  #v(20pt)
  #only("2-")[- We found two solutions: $x = 2$ and $x = 3$ 🎉]
  #v(20pt)
  #only("3-")[- We verified both solutions ✅]
  #only("1")[
    #voiceover("To summarize, we solved the quadratic equation x squared minus 5x plus 6 equals zero using the p-q formula.")
  ]
  #only("2")[
    #voiceover("We found two solutions: x equals 2 and x equals 3.")
  ]
  #only("3")[
    #voiceover("Finally, we verified both solutions by substituting them back into the original equation. Well done on solving this quadratic equation!")
  ]
]