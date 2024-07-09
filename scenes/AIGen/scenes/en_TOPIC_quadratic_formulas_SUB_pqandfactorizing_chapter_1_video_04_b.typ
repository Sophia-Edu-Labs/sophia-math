#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Solving Quadratic Equations]
  #v(40pt)
  #only("1-")[- Equation: $x^2 - 2x - 3 = 0$]
  #v(20pt)
  #only("2-")[- We'll use the p-q formula: $x = -p/2 ± sqrt((p/2)^2 + q)$]
  #v(20pt)
  #only("3-")[- Where $p = -2$ and $q = -3$]
  #only("1")[
    #voiceover("Let's review the correct solution step-by-step. We start with the quadratic equation x squared minus 2x minus 3 equals zero.")
  ]
  #only("2")[
    #voiceover("To solve this, we'll use the p-q formula. This formula states that x equals negative p over 2, plus or minus the square root of p over 2 squared plus q.")
  ]
  #only("3")[
    #voiceover("In our equation, p equals negative 2 and q equals negative 3.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Applying the p-q Formula]
  #v(40pt)
  #only("1-")[- $x = -(-2)/2 ± sqrt(((-2)/2)^2 + (-3))$]
  #v(20pt)
  #only("2-")[- $x = 1 ± sqrt(1 - 3)$]
  #v(20pt)
  #only("3-")[- $x = 1 ± sqrt(-2)$]
  #only("1")[
    #voiceover("Now, let's substitute these values into our p-q formula. We get x equals negative of negative 2 over 2, plus or minus the square root of negative 2 over 2 squared plus negative 3.")
  ]
  #only("2")[
    #voiceover("Simplifying, we get x equals 1 plus or minus the square root of 1 minus 3.")
  ]
  #only("3")[
    #voiceover("This simplifies to x equals 1 plus or minus the square root of negative 2.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Simplifying the Solution]
  #v(40pt)
  #only("1-")[- $x = 1 ± sqrt(2)i$]
  #v(20pt)
  #only("2-")[- $x = 1 + sqrt(2)i$ or $x = 1 - sqrt(2)i$]
  #v(20pt)
  #only("3-")[- But we're looking for real solutions... 🤔]
  #only("1")[
    #voiceover("The square root of a negative number gives us an imaginary number. So our solution becomes x equals 1 plus or minus the square root of 2 times i, where i is the imaginary unit.")
  ]
  #only("2")[
    #voiceover("We can write this as two separate solutions: x equals 1 plus square root of 2 i, or x equals 1 minus square root of 2 i.")
  ]
  #only("3")[
    #voiceover("However, we're looking for real solutions to this equation. These complex solutions suggest that there are no real roots. But is this correct?")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Double-Checking Our Work]
  #v(40pt)
  #only("1-")[- Let's factor the original equation: $x^2 - 2x - 3 = 0$]
  #v(20pt)
  #only("2-")[- $(x - 3)(x + 1) = 0$]
  #v(20pt)
  #only("3-")[- Solutions: $x = 3$ or $x = -1$]
  #only("1")[
    #voiceover("Let's double-check our work by factoring the original equation: x squared minus 2x minus 3 equals zero.")
  ]
  #only("2")[
    #voiceover("This factors to x minus 3 times x plus 1 equals zero.")
  ]
  #only("3")[
    #voiceover("From this, we can see that the solutions are x equals 3 or x equals negative 1. These are real solutions!")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Conclusion]
  #v(40pt)
  #only("1-")[- We made a mistake in applying the p-q formula 😅]
  #v(20pt)
  #only("2-")[- Correct solutions: $x = 3$ or $x = -1$]
  #v(20pt)
  #only("3-")[- Always double-check your work! 🧮✅]
  #only("1")[
    #voiceover("It looks like we made a mistake in applying the p-q formula. This is a great reminder of why it's always important to check our work!")
  ]
  #only("2")[
    #voiceover("The correct solutions to the equation x squared minus 2x minus 3 equals zero are x equals 3 or x equals negative 1.")
  ]
  #only("3")[
    #voiceover("Remember, always double-check your work, especially when dealing with complex formulas. It's easy to make small mistakes that can lead to incorrect answers. Great job on solving this problem!")
  ]
]