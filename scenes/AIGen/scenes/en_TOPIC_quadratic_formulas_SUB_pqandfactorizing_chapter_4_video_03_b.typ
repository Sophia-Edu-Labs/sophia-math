#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Solving Quadratic Equations by Factoring]
  #v(40pt)
  #only("1-")[Equation: $x^2 + 3x + 2 = 0$]
  #v(20pt)
  #only("2-")[Step 1: Identify $a$, $b$, and $c$]
  #v(10pt)
  #only("3-")[- $a = 1$]
  #v(5pt)
  #only("4-")[- $b = 3$]
  #v(5pt)
  #only("5-")[- $c = 2$]
  
  #only("1")[
    #voiceover("Nice try! Let's go through the correct solution step by step. We're given the quadratic equation x squared plus 3x plus 2 equals zero.")
  ]
  #only("2")[
    #voiceover("Our first step is to identify the coefficients a, b, and c in the standard form ax squared plus bx plus c equals zero.")
  ]
  #only("3")[
    #voiceover("Here, a is 1,")
  ]
  #only("4")[
    #voiceover("b is 3,")
  ]
  #only("5")[
    #voiceover("and c is 2.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Factoring the Quadratic]
  #v(40pt)
  #only("1-")[Step 2: Find factors of $a dot c = 1 dot 2 = 2$]
  #v(20pt)
  #only("2-")[Factors of 2: $1$ and $2$]
  #v(20pt)
  #only("3-")[Step 3: Find sum of factors equal to $b = 3$]
  #v(20pt)
  #only("4-")[$(x + 1)(x + 2) = 0$]
  
  #only("1")[
    #voiceover("Now, let's factor the quadratic. We need to find two numbers that multiply to give a times c, which is 1 times 2, or 2.")
  ]
  #only("2")[
    #voiceover("The factors of 2 are 1 and 2.")
  ]
  #only("3")[
    #voiceover("These factors also need to add up to b, which is 3. Luckily, 1 plus 2 equals 3, so these work perfectly!")
  ]
  #only("4")[
    #voiceover("We can now rewrite our equation in factored form as: x plus 1 times x plus 2 equals zero.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Solving the Equation]
  #v(40pt)
  #only("1-")[Step 4: Apply the zero product property]
  #v(20pt)
  #only("2-")[Either $x + 1 = 0$ or $x + 2 = 0$]
  #v(20pt)
  #only("3-")[Solve for $x$:]
  #v(10pt)
  #only("4-")[- $x = -1$ or $x = -2$]
  
  #only("1")[
    #voiceover("To solve this equation, we'll use the zero product property. This states that if the product of factors is zero, then one of the factors must be zero.")
  ]
  #only("2")[
    #voiceover("So, either x plus 1 equals zero, or x plus 2 equals zero.")
  ]
  #only("3")[
    #voiceover("Now we can solve for x in each case.")
  ]
  #only("4")[
    #voiceover("We get x equals negative 1 or x equals negative 2.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)
  #only("1-")[The solutions are $x = -1$ or $x = -2$]
  #v(20pt)
  #only("2-")[Let's verify:]
  #v(10pt)
  #only("3-")[For $x = -1$: $(-1)^2 + 3(-1) + 2 = 1 - 3 + 2 = 0$ ✅]
  #v(10pt)
  #only("4-")[For $x = -2$: $(-2)^2 + 3(-2) + 2 = 4 - 6 + 2 = 0$ ✅]
  
  #only("1")[
    #voiceover("So our final answer is: x equals negative 1 or x equals negative 2.")
  ]
  #only("2")[
    #voiceover("Let's quickly verify our solutions by plugging them back into the original equation.")
  ]
  #only("3")[
    #voiceover("For x equals negative 1: negative 1 squared, plus 3 times negative 1, plus 2, equals 1 minus 3 plus 2, which indeed equals zero.")
  ]
  #only("4")[
    #voiceover("Similarly, for x equals negative 2: negative 2 squared, plus 3 times negative 2, plus 2, equals 4 minus 6 plus 2, which also equals zero. Great job solving this quadratic equation!")
  ]
]