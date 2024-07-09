#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Solving Quadratic Equations]
  #v(40pt)
  #only("1-")[- Equation: $x^2 - 4x - 5 = 0$]
  #v(20pt)
  #only("2-")[- Using p-q formula: $x = -p/2 ± sqrt((p/2)^2 + q)$]
  #v(20pt)
  #only("3-")[- Where $p = -4$ and $q = -5$]
  #only("1")[
    #voiceover("Great job on solving this equation! Let's go through the solution step-by-step. We start with the quadratic equation x squared minus 4x minus 5 equals zero.")
  ]
  #only("2")[
    #voiceover("To solve this, we'll use the p-q formula. This formula states that x equals negative p over 2, plus or minus the square root of p over 2 squared plus q.")
  ]
  #only("3")[
    #voiceover("In our equation, p is equal to negative 4, and q is equal to negative 5.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Applying the Formula]
  #v(40pt)
  #only("1-")[- $x = -(-4)/2 ± sqrt(((-4)/2)^2 + (-5))$]
  #v(20pt)
  #only("2-")[- $x = 2 ± sqrt(4 - 5)$]
  #v(20pt)
  #only("3-")[- $x = 2 ± sqrt(-1)$]
  #only("1")[
    #voiceover("Now, let's substitute these values into our formula. We get x equals negative of negative 4 over 2, plus or minus the square root of negative 4 over 2 squared, plus negative 5.")
  ]
  #only("2")[
    #voiceover("Simplifying, we get x equals 2 plus or minus the square root of 4 minus 5.")
  ]
  #only("3")[
    #voiceover("This further simplifies to x equals 2 plus or minus the square root of negative 1.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Simplifying the Result]
  #v(40pt)
  #only("1-")[- $x = 2 ± i$]
  #v(20pt)
  #only("2-")[- $x = 2 + i$ or $x = 2 - i$]
  #v(20pt)
  #only("3-")[- But we're looking for real solutions... 🤔]
  #only("1")[
    #voiceover("The square root of negative 1 is i, the imaginary unit. So our equation becomes x equals 2 plus or minus i.")
  ]
  #only("2")[
    #voiceover("This gives us two complex solutions: x equals 2 plus i, or x equals 2 minus i.")
  ]
  #only("3")[
    #voiceover("However, we're looking for real solutions to this equation. So we need to approach this differently.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Alternative Approach]
  #v(40pt)
  #only("1-")[- Let's factor the equation instead]
  #v(20pt)
  #only("2-")[- $x^2 - 4x - 5 = 0$]
  #v(20pt)
  #only("3-")[- $(x - 5)(x + 1) = 0$]
  #only("1")[
    #voiceover("Let's try a different approach. Instead of using the p-q formula, we can factor the equation.")
  ]
  #only("2")[
    #voiceover("Our original equation is x squared minus 4x minus 5 equals zero.")
  ]
  #only("3")[
    #voiceover("This can be factored as x minus 5 times x plus 1 equals zero.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Finding the Solutions]
  #v(40pt)
  #only("1-")[- $(x - 5)(x + 1) = 0$]
  #v(20pt)
  #only("2-")[- $x - 5 = 0$ or $x + 1 = 0$]
  #v(20pt)
  #only("3-")[- $x = 5$ or $x = -1$]
  #only("1")[
    #voiceover("Now that we have the factored form, we can find our solutions.")
  ]
  #only("2")[
    #voiceover("For this product to be zero, either x minus 5 must be zero, or x plus 1 must be zero.")
  ]
  #only("3")[
    #voiceover("Solving these, we get x equals 5 or x equals negative 1. These are our real solutions!")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)
  #only("1-")[- Solutions: $x = 5$ or $x = -1$]
  #v(20pt)
  #only("2-")[- Always check your solutions! ✅]
  #v(20pt)
  #only("3-")[💡 Remember: Factoring can often be easier than using formulas!]
  #only("1")[
    #voiceover("So, our final answer is that x equals 5 or x equals negative 1.")
  ]
  #only("2")[
    #voiceover("It's always a good idea to check your solutions by plugging them back into the original equation.")
  ]
  #only("3")[
    #voiceover("Remember, while formulas like the p-q formula are useful, sometimes factoring can be an easier and more straightforward approach to solving quadratic equations. Great job on solving this problem!")
  ]
]