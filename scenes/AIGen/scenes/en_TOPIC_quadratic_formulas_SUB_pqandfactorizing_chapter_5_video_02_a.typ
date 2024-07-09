#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Solving Quadratic Equations by Factoring]
  #v(40pt)
  #only("1-")[Equation: $x^2 - 7x + 12 = 0$]
  #v(20pt)
  #only("2-")[Step 1: Identify $a$, $b$, and $c$]
  #v(10pt)
  #only("3-")[- $a = 1$]
  #v(5pt)
  #only("4-")[- $b = -7$]
  #v(5pt)
  #only("5-")[- $c = 12$]
  
  #only("1")[
    #voiceover("Great job on attempting this problem! Let's walk through the solution step-by-step. We're solving the quadratic equation x squared minus 7x plus 12 equals zero by factoring.")
  ]
  #only("2")[
    #voiceover("First, let's identify the coefficients a, b, and c in our quadratic equation.")
  ]
  #only("3")[
    #voiceover("a is the coefficient of x squared, which is 1.")
  ]
  #only("4")[
    #voiceover("b is the coefficient of x, which is negative 7.")
  ]
  #only("5")[
    #voiceover("And c is the constant term, which is 12.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Finding Factors]
  #v(40pt)
  #only("1-")[Step 2: Find factors of $a dot c$]
  #v(10pt)
  #only("2-")[- $a dot c = 1 dot 12 = 12$]
  #v(10pt)
  #only("3-")[- Factors of 12: $±1, ±2, ±3, ±4, ±6, ±12$]
  #v(10pt)
  #only("4-")[Step 3: Find two factors that add up to $b$]
  #v(10pt)
  #only("5-")[- $3 + (-4) = -1$]
  
  #only("1")[
    #voiceover("Now, let's find the factors of a times c.")
  ]
  #only("2")[
    #voiceover("a times c equals 1 times 12, which is 12.")
  ]
  #only("3")[
    #voiceover("The factors of 12 are plus or minus 1, 2, 3, 4, 6, and 12.")
  ]
  #only("4")[
    #voiceover("Next, we need to find two factors that add up to b, which is negative 7.")
  ]
  #only("5")[
    #voiceover("We can see that 3 plus negative 4 equals negative 1, which is our b value.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Factoring the Equation]
  #v(40pt)
  #only("1-")[Step 4: Rewrite the middle term]
  #v(10pt)
  #only("2-")[- $x^2 - 7x + 12 = x^2 + 3x - 4x + 12$]
  #v(20pt)
  #only("3-")[Step 5: Factor by grouping]
  #v(10pt)
  #only("4-")[- $(x^2 + 3x) + (-4x + 12)$]
  #v(10pt)
  #only("5-")[- $x(x + 3) - 4(x - 3)$]
  #v(10pt)
  #only("6-")[- $(x - 3)(x + 4) = 0$]
  
  #only("1")[
    #voiceover("Now we can factor the equation. First, let's rewrite the middle term.")
  ]
  #only("2")[
    #voiceover("We split negative 7x into 3x and negative 4x.")
  ]
  #only("3")[
    #voiceover("Next, we factor by grouping.")
  ]
  #only("4")[
    #voiceover("We group the first two terms and the last two terms.")
  ]
  #only("5")[
    #voiceover("Then we factor out the common factors from each group.")
  ]
  #only("6")[
    #voiceover("Finally, we can factor out the common binomial to get x minus 3 times x plus 4 equals zero.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Solving the Equation]
  #v(40pt)
  #only("1-")[Step 6: Use the zero product property]
  #v(10pt)
  #only("2-")[- If $(x - 3)(x + 4) = 0$, then:]
  #v(10pt)
  #only("3-")[- Either $x - 3 = 0$ or $x + 4 = 0$]
  #v(20pt)
  #only("4-")[Step 7: Solve for x]
  #v(10pt)
  #only("5-")[- $x = 3$ or $x = -4$]
  
  #only("1")[
    #voiceover("Now we can solve the equation using the zero product property.")
  ]
  #only("2")[
    #voiceover("This property states that if the product of factors is zero, then one of the factors must be zero.")
  ]
  #only("3")[
    #voiceover("So, either x minus 3 equals zero, or x plus 4 equals zero.")
  ]
  #only("4")[
    #voiceover("Finally, we solve for x.")
  ]
  #only("5")[
    #voiceover("We get x equals 3 or x equals negative 4.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)
  #only("1-")[The solutions are:]
  #v(20pt)
  #only("2-")[- $x = 3$]
  #v(10pt)
  #only("3-")[- $x = -4$]
  #v(40pt)
  #only("4-")[✅ Always check your answers!]
  
  #only("1")[
    #voiceover("So, our final answer is:")
  ]
  #only("2")[
    #voiceover("x equals 3")
  ]
  #only("3")[
    #voiceover("or x equals negative 4")
  ]
  #only("4")[
    #voiceover("Remember, it's always a good idea to check your answers by plugging them back into the original equation. Great job solving this quadratic equation by factoring!")
  ]
]