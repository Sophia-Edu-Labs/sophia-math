#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Solving Quadratic Equations]
  #v(40pt)
  #only("1-")[- Equation: $x^2 + 6x + 9 = 0$]
  #v(20pt)
  #only("2-")[- Using p-q formula: $x = -p/2 ± sqrt((p/2)^2 - q)$]
  #v(20pt)
  #only("3-")[- Where $p = 6$ and $q = 9$]
  
  #only("1")[
    #voiceover("Excellent work! Let's walk through the solution step by step. We're dealing with the quadratic equation x squared plus 6x plus 9 equals zero.")
  ]
  #only("2")[
    #voiceover("To solve this, we'll use the p-q formula. This formula states that x equals negative p over 2, plus or minus the square root of p over 2 squared minus q.")
  ]
  #only("3")[
    #voiceover("In our equation, p equals 6 and q equals 9.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Applying the Formula]
  #v(40pt)
  #only("1-")[- Step 1: $x = -6/2 ± sqrt((6/2)^2 - 9)$]
  #v(20pt)
  #only("2-")[- Step 2: $x = -3 ± sqrt(3^2 - 9)$]
  #v(20pt)
  #only("3-")[- Step 3: $x = -3 ± sqrt(9 - 9)$]
  #v(20pt)
  #only("4-")[- Step 4: $x = -3 ± sqrt(0)$]
  
  #only("1")[
    #voiceover("Let's apply the formula. We replace p with 6 and q with 9.")
  ]
  #only("2")[
    #voiceover("Simplifying, we get negative 3 plus or minus the square root of 3 squared minus 9.")
  ]
  #only("3")[
    #voiceover("3 squared is 9, so we have negative 3 plus or minus the square root of 9 minus 9.")
  ]
  #only("4")[
    #voiceover("9 minus 9 is 0, so we're left with negative 3 plus or minus the square root of 0.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Solution]
  #v(40pt)
  #only("1-")[- $x = -3 ± 0$]
  #v(20pt)
  #only("2-")[- $x = -3$]
  #v(40pt)
  #only("3-")[💡 The equation has only one solution!]
  
  #only("1")[
    #voiceover("The square root of 0 is 0, so our equation simplifies to x equals negative 3 plus or minus 0.")
  ]
  #only("2")[
    #voiceover("This gives us x equals negative 3.")
  ]
  #only("3")[
    #voiceover("Interestingly, this equation has only one solution. This is because the quadratic expression x squared plus 6x plus 9 is a perfect square trinomial, which can be factored as the square of x plus 3.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Verification]
  #v(40pt)
  #only("1-")[- Let's verify: $(-3)^2 + 6(-3) + 9 = 0$]
  #v(20pt)
  #only("2-")[- $9 - 18 + 9 = 0$]
  #v(20pt)
  #only("3-")[- $0 = 0$ ✅]
  
  #only("1")[
    #voiceover("Let's verify our solution by plugging negative 3 back into the original equation.")
  ]
  #only("2")[
    #voiceover("Negative 3 squared is 9, 6 times negative 3 is negative 18, and we add 9.")
  ]
  #only("3")[
    #voiceover("This gives us 9 minus 18 plus 9, which equals 0. Our solution checks out!")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary]
  #v(40pt)
  #only("1-")[- Quadratic equation: $x^2 + 6x + 9 = 0$]
  #v(20pt)
  #only("2-")[- Solution: $x = -3$]
  #v(20pt)
  #only("3-")[- This is a special case with only one solution]
  
  #only("1")[
    #voiceover("To summarize, we solved the quadratic equation x squared plus 6x plus 9 equals 0.")
  ]
  #only("2")[
    #voiceover("We found that the solution is x equals negative 3.")
  ]
  #only("3")[
    #voiceover("This is a special case where we have only one solution, because the left side of the equation is a perfect square trinomial. Great job solving this problem!")
  ]
]