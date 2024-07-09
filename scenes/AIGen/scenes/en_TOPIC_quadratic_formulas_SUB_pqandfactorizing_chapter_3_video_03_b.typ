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
    #voiceover("Let's review the correct solution step-by-step. First, recall that a quadratic equation has the general form a x squared plus b x plus c equals zero.")
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
  #only("1-")[- Given equation: $x^2 + 5x + 6 = 0$]
  #v(20pt)
  #only("2-")[- Comparing with $a x^2 + b x + c = 0$:]
  #v(20pt)
  #only("3-")[  • $a = 1$]
  #v(10pt)
  #only("4-")[  • $b = 5$]
  #v(10pt)
  #only("5-")[  • $c = 6$]
  #only("1")[
    #voiceover("Now, let's look at our specific equation: x squared plus 5x plus 6 equals zero.")
  ]
  #only("2")[
    #voiceover("Comparing this with the standard form,")
  ]
  #only("3")[
    #voiceover("we see that a equals 1,")
  ]
  #only("4")[
    #voiceover("b equals 5,")
  ]
  #only("5")[
    #voiceover("and c equals 6.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Calculating p and q]
  #v(40pt)
  #only("1-")[- $p = b/a = 5/1 = 5$]
  #v(20pt)
  #only("2-")[- $q = c/a = 6/1 = 6$]
  #only("1")[
    #voiceover("Now let's calculate p and q. p equals b over a, which is 5 over 1, or simply 5.")
  ]
  #only("2")[
    #voiceover("Similarly, q equals c over a, which is 6 over 1, or 6.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Applying the p-q Formula]
  #v(40pt)
  #only("1-")[- $x = -p/2 ± sqrt((p/2)^2 - q)$]
  #v(20pt)
  #only("2-")[- $x = -5/2 ± sqrt((5/2)^2 - 6)$]
  #v(20pt)
  #only("3-")[- $x = -2.5 ± sqrt(6.25 - 6)$]
  #v(20pt)
  #only("4-")[- $x = -2.5 ± sqrt(0.25)$]
  #v(20pt)
  #only("5-")[- $x = -2.5 ± 0.5$]
  #only("1")[
    #voiceover("Now we can apply the p-q formula. x equals negative p over 2, plus or minus the square root of p over 2 squared minus q.")
  ]
  #only("2")[
    #voiceover("Substituting our values, we get x equals negative 5 over 2, plus or minus the square root of 5 over 2 squared minus 6.")
  ]
  #only("3")[
    #voiceover("Simplifying, we get x equals negative 2.5, plus or minus the square root of 6.25 minus 6.")
  ]
  #only("4")[
    #voiceover("This simplifies to x equals negative 2.5, plus or minus the square root of 0.25.")
  ]
  #only("5")[
    #voiceover("The square root of 0.25 is 0.5, so our final expression is x equals negative 2.5, plus or minus 0.5.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Solution]
  #v(40pt)
  #only("1-")[- $x = -2.5 + 0.5 = -2$]
  #v(20pt)
  #only("2-")[- $x = -2.5 - 0.5 = -3$]
  #v(40pt)
  #only("3-")[Therefore, $x = -2$ or $x = -3$ 🎉]
  #only("1")[
    #voiceover("Now we can find our two solutions. For the plus case, x equals negative 2.5 plus 0.5, which is negative 2.")
  ]
  #only("2")[
    #voiceover("For the minus case, x equals negative 2.5 minus 0.5, which is negative 3.")
  ]
  #only("3")[
    #voiceover("Therefore, our final solution is x equals negative 2 or x equals negative 3. Well done on solving this quadratic equation!")
  ]
]