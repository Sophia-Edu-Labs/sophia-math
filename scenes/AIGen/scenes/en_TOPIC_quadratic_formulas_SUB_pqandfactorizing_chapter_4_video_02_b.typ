#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Solving Quadratic Equations by Factoring]
  #v(40pt)
  #only("1-")[Equation: $x^2 - 5x + 6 = 0$]
  #v(20pt)
  #only("2-")[Step 1: Identify $a$, $b$, and $c$]
  #v(10pt)
  #only("3-")[- $a = 1$]
  #v(10pt)
  #only("4-")[- $b = -5$]
  #v(10pt)
  #only("5-")[- $c = 6$]
  
  #only("1")[
    #voiceover("Let's review the correct solution step-by-step. We start with the equation x squared minus 5x plus 6 equals zero.")
  ]
  #only("2")[
    #voiceover("The first step is to identify the coefficients a, b, and c in our standard form ax squared plus bx plus c equals zero.")
  ]
  #only("3")[
    #voiceover("Here, a is 1, the coefficient of x squared.")
  ]
  #only("4")[
    #voiceover("b is negative 5, the coefficient of x.")
  ]
  #only("5")[
    #voiceover("And c is 6, the constant term.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Factoring the Quadratic]
  #v(40pt)
  #only("1-")[Step 2: Find two numbers that:]
  #v(10pt)
  #only("2-")[- Multiply to give $a dot c = 1 dot 6 = 6$]
  #v(10pt)
  #only("3-")[- Add to give $b = -5$]
  #v(20pt)
  #only("4-")[The numbers are -2 and -3]
  
  #only("1")[
    #voiceover("Now, we need to factor this quadratic. To do this, we need to find two numbers with specific properties.")
  ]
  #only("2")[
    #voiceover("These two numbers should multiply to give a times c, which is 1 times 6, or 6.")
  ]
  #only("3")[
    #voiceover("And they should add to give b, which is negative 5.")
  ]
  #only("4")[
    #voiceover("The numbers that satisfy these conditions are negative 2 and negative 3.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Writing the Factored Form]
  #v(40pt)
  #only("1-")[Step 3: Write the factored form]
  #v(20pt)
  #only("2-")[$(x - 2)(x - 3) = 0$]
  #v(20pt)
  #only("3-")[Step 4: Solve each factor]
  #v(10pt)
  #only("4-")[- $x - 2 = 0$ or $x - 3 = 0$]
  #v(10pt)
  #only("5-")[- $x = 2$ or $x = 3$]
  
  #only("1")[
    #voiceover("Now we can write our equation in factored form.")
  ]
  #only("2")[
    #voiceover("The factored form is x minus 2 times x minus 3 equals zero.")
  ]
  #only("3")[
    #voiceover("To solve this, we set each factor to zero and solve for x.")
  ]
  #only("4")[
    #voiceover("So we have x minus 2 equals zero or x minus 3 equals zero.")
  ]
  #only("5")[
    #voiceover("Solving these, we get x equals 2 or x equals 3.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Solution]
  #v(40pt)
  #only("1-")[The solutions are:]
  #v(20pt)
  #only("2-")[#text(size: 24pt)[x = 2 or x = 3]]
  #v(40pt)
  #only("3-")[💡 Always check your solutions!]
  
  #only("1")[
    #voiceover("So, our final solution is:")
  ]
  #only("2")[
    #voiceover("x equals 2 or x equals 3.")
  ]
  #only("3")[
    #voiceover("Remember, it's always a good idea to check your solutions by plugging them back into the original equation. Great work on solving this quadratic equation by factoring!")
  ]
]