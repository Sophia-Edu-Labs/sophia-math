#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Solving Quadratic Equations]
  #v(40pt)
  #only("1-")[- Quadratic equation: $a x^2 + b x + c = 0$]
  #v(20pt)
  #only("2-")[- p-q formula: $x = -p/2 ± sqrt((p/2)^2 - q)$]
  #v(20pt)
  #only("3-")[- Where $p = b/a$ and $q = c/a$]
  
  #only("1")[
    #voiceover("Great job on solving this problem! Let's go through the solution step-by-step. First, let's recall what a quadratic equation looks like. It's in the form a x squared plus b x plus c equals zero.")
  ]
  #only("2")[
    #voiceover("To solve this, we'll use the p-q formula. This states that x equals negative p over 2, plus or minus the square root of p over 2 squared minus q.")
  ]
  #only("3")[
    #voiceover("In this formula, p equals b over a, and q equals c over a, where a, b, and c are the coefficients from our original quadratic equation.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Our Equation]
  #v(40pt)
  #only("1-")[- Given equation: $x^2 - 4x + 3 = 0$]
  #v(20pt)
  #only("2-")[- Comparing to $a x^2 + b x + c = 0$:]
  #v(20pt)
  #only("3-")[  • $a = 1$]
  #v(10pt)
  #only("4-")[  • $b = -4$]
  #v(10pt)
  #only("5-")[  • $c = 3$]
  
  #only("1")[
    #voiceover("Now, let's look at our specific equation: x squared minus 4x plus 3 equals zero.")
  ]
  #only("2")[
    #voiceover("Comparing this to the standard form of a quadratic equation,")
  ]
  #only("3")[
    #voiceover("we can see that a equals 1,")
  ]
  #only("4")[
    #voiceover("b equals negative 4,")
  ]
  #only("5")[
    #voiceover("and c equals 3.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Calculating p and q]
  #v(40pt)
  #only("1-")[- $p = b/a = -4/1 = -4$]
  #v(20pt)
  #only("2-")[- $q = c/a = 3/1 = 3$]
  
  #only("1")[
    #voiceover("Now we can calculate p. It's b over a, which is negative 4 over 1, which simplifies to negative 4.")
  ]
  #only("2")[
    #voiceover("Similarly, q is c over a, which is 3 over 1, or simply 3.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Applying the p-q Formula]
  #v(40pt)
  #only("1-")[- $x = -p/2 ± sqrt((p/2)^2 - q)$]
  #v(20pt)
  #only("2-")[- $x = -(-4)/2 ± sqrt(((-4)/2)^2 - 3)$]
  #v(20pt)
  #only("3-")[- $x = 2 ± sqrt(4 - 3)$]
  #v(20pt)
  #only("4-")[- $x = 2 ± sqrt(1)$]
  #v(20pt)
  #only("5-")[- $x = 2 ± 1$]
  
  #only("1")[
    #voiceover("Now let's apply the p-q formula. We have x equals negative p over 2, plus or minus the square root of p over 2 squared minus q.")
  ]
  #only("2")[
    #voiceover("Substituting our values, we get x equals negative of negative 4 over 2, plus or minus the square root of negative 4 over 2 squared minus 3.")
  ]
  #only("3")[
    #voiceover("Simplifying, this becomes 2 plus or minus the square root of 4 minus 3.")
  ]
  #only("4")[
    #voiceover("Which further simplifies to 2 plus or minus the square root of 1.")
  ]
  #only("5")[
    #voiceover("And finally, we get 2 plus or minus 1.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Solution]
  #v(40pt)
  #only("1-")[- $x = 2 + 1 = 3$ or $x = 2 - 1 = 1$]
  #v(20pt)
  #only("2-")[- Therefore, $x = 1$ or $x = 3$ ✅]
  
  #only("1")[
    #voiceover("This gives us two solutions: x equals 2 plus 1, which is 3, or x equals 2 minus 1, which is 1.")
  ]
  #only("2")[
    #voiceover("Therefore, our final solution is x equals 1 or x equals 3. Well done on solving this quadratic equation using the p-q formula!")
  ]
]