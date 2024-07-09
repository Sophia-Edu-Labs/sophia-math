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
    #voiceover("Great job on solving the quadratic equation! Let's go through the solution step-by-step. First, recall that a quadratic equation has the general form a x squared plus b x plus c equals zero.")
  ]
  #only("2")[
    #voiceover("To solve this, we use the p-q formula, which states that x equals negative p over 2, plus or minus the square root of p over 2 squared minus q.")
  ]
  #only("3")[
    #voiceover("Here, p equals b over a, and q equals c over a.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Our Equation]
  #v(40pt)
  #only("1-")[$ x^2 + 2x - 8 = 0 $]
  #v(20pt)
  #only("2-")[Comparing to $a x^2 + b x + c = 0$:]
  #v(20pt)
  #only("3-")[- $a = 1$]
  #v(10pt)
  #only("4-")[- $b = 2$]
  #v(10pt)
  #only("5-")[- $c = -8$]
  
  #only("1")[
    #voiceover("Our specific equation is x squared plus 2x minus 8 equals zero.")
  ]
  #only("2")[
    #voiceover("Let's compare this to the standard form of a quadratic equation.")
  ]
  #only("3")[
    #voiceover("We can see that a equals 1,")
  ]
  #only("4")[
    #voiceover("b equals 2,")
  ]
  #only("5")[
    #voiceover("and c equals negative 8.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Calculating p and q]
  #v(40pt)
  #only("1-")[- $p = b/a = 2/1 = 2$]
  #v(20pt)
  #only("2-")[- $q = c/a = -8/1 = -8$]
  
  #only("1")[
    #voiceover("Now, let's calculate p and q. p equals b over a, which is 2 over 1, which simplifies to 2.")
  ]
  #only("2")[
    #voiceover("q equals c over a, which is negative 8 over 1, which simplifies to negative 8.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Applying the p-q Formula]
  #v(40pt)
  #only("1-")[$ x = -p/2 ± sqrt((p/2)^2 - q) $]
  #v(20pt)
  #only("2-")[$ x = -2/2 ± sqrt((2/2)^2 - (-8)) $]
  #v(20pt)
  #only("3-")[$ x = -1 ± sqrt(1 + 8) $]
  #v(20pt)
  #only("4-")[$ x = -1 ± sqrt(9) $]
  #v(20pt)
  #only("5-")[$ x = -1 ± 3 $]
  
  #only("1")[
    #voiceover("Now we can apply the p-q formula. We substitute our values for p and q.")
  ]
  #only("2")[
    #voiceover("This gives us x equals negative 2 over 2, plus or minus the square root of 2 over 2 squared, minus negative 8.")
  ]
  #only("3")[
    #voiceover("Simplifying, we get x equals negative 1, plus or minus the square root of 1 plus 8.")
  ]
  #only("4")[
    #voiceover("This simplifies to x equals negative 1, plus or minus the square root of 9.")
  ]
  #only("5")[
    #voiceover("The square root of 9 is 3, so our final equation is x equals negative 1, plus or minus 3.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Solution]
  #v(40pt)
  #only("1-")[$ x = -1 + 3 $ or $ x = -1 - 3 $]
  #v(20pt)
  #only("2-")[$ x = 2 $ or $ x = -4 $]
  
  #only("1")[
    #voiceover("To get our final solution, we calculate both the plus and minus cases.")
  ]
  #only("2")[
    #voiceover("This gives us x equals 2 or x equals negative 4. These are the two solutions to our quadratic equation.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Verification]
  #v(40pt)
  #only("1-")[Let's verify our solutions:]
  #v(20pt)
  #only("2-")[For $x = 2$: $2^2 + 2(2) - 8 = 4 + 4 - 8 = 0$ ✅]
  #v(20pt)
  #only("3-")[For $x = -4$: $(-4)^2 + 2(-4) - 8 = 16 - 8 - 8 = 0$ ✅]
  
  #only("1")[
    #voiceover("Let's verify our solutions by plugging them back into the original equation.")
  ]
  #only("2")[
    #voiceover("For x equals 2, we get 2 squared plus 2 times 2 minus 8, which equals 4 plus 4 minus 8, which equals zero. This checks out.")
  ]
  #only("3")[
    #voiceover("For x equals negative 4, we get negative 4 squared plus 2 times negative 4 minus 8, which equals 16 minus 8 minus 8, which also equals zero. Both solutions are correct!")
  ]
]