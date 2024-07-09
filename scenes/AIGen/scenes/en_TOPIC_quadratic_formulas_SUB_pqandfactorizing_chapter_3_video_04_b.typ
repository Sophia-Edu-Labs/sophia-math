#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Solving Quadratic Equations]
  #v(40pt)
  #only("1-")[- Equation: $x^2 - 3x - 4 = 0$]
  #v(20pt)
  #only("2-")[- Using p-q formula: $x = -p/2 ± sqrt((p/2)^2 + q)$]
  #v(20pt)
  #only("3-")[- Where $p = -3$ and $q = -4$]
  
  #only("1")[
    #voiceover("Not quite. Let's walk through the correct solution step-by-step. We're dealing with the quadratic equation x squared minus 3x minus 4 equals zero.")
  ]
  #only("2")[
    #voiceover("To solve this, we'll use the p-q formula. This formula states that x equals negative p over 2, plus or minus the square root of p over 2 squared plus q.")
  ]
  #only("3")[
    #voiceover("In our equation, p is equal to negative 3, and q is equal to negative 4.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Applying the Formula]
  #v(40pt)
  #only("1-")[- $x = -(-3)/2 ± sqrt(((-3)/2)^2 + (-4))$]
  #v(20pt)
  #only("2-")[- $x = 3/2 ± sqrt((9/4) - 4)$]
  #v(20pt)
  #only("3-")[- $x = 3/2 ± sqrt(9/4 - 16/4)$]
  #v(20pt)
  #only("4-")[- $x = 3/2 ± sqrt(-7/4)$]
  
  #only("1")[
    #voiceover("Now, let's plug these values into our formula. We get x equals negative of negative 3 over 2, plus or minus the square root of negative 3 over 2 squared, plus negative 4.")
  ]
  #only("2")[
    #voiceover("Simplifying, we get 3 over 2 plus or minus the square root of 9 over 4 minus 4.")
  ]
  #only("3")[
    #voiceover("We can rewrite 4 as 16 over 4 to have a common denominator.")
  ]
  #only("4")[
    #voiceover("This simplifies to 3 over 2 plus or minus the square root of negative 7 over 4.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Simplifying the Result]
  #v(40pt)
  #only("1-")[- $x = 3/2 ± sqrt(7/4)$]
  #v(20pt)
  #only("2-")[- $x = 3/2 ± (sqrt(7)/2)$]
  #v(20pt)
  #only("3-")[- $x = (3 ± sqrt(7))/2$]
  
  #only("1")[
    #voiceover("The negative sign under the square root becomes positive when we take it out.")
  ]
  #only("2")[
    #voiceover("We can simplify the square root of 7 over 4 to the square root of 7 over 2.")
  ]
  #only("3")[
    #voiceover("Finally, we can write this as 3 plus or minus the square root of 7, all over 2.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Solution]
  #v(40pt)
  #only("1-")[- $x = (3 + sqrt(7))/2$ or $x = (3 - sqrt(7))/2$]
  #v(20pt)
  #only("2-")[- $x ≈ 4$ or $x ≈ -1$]
  #v(40pt)
  #only("3-")[💡 Always check your solutions!]
  
  #only("1")[
    #voiceover("Our solution gives us two values for x: 3 plus the square root of 7, all over 2; or 3 minus the square root of 7, all over 2.")
  ]
  #only("2")[
    #voiceover("When we calculate these values, we get approximately 4 and negative 1.")
  ]
  #only("3")[
    #voiceover("Remember, it's always a good idea to check your solutions by plugging them back into the original equation!")
  ]
]