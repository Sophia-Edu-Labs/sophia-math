#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Solving Quadratic Equations by Factoring]
  #v(40pt)
  #only("1-")[Equation: $x^2 + 4x + 3 = 0$]
  #v(20pt)
  #only("2-")[Step 1: Identify $a$, $b$, and $c$]
  #v(10pt)
  #only("3-")[- $a = 1$]
  #v(5pt)
  #only("4-")[- $b = 4$]
  #v(5pt)
  #only("5-")[- $c = 3$]
  
  #only("1")[
    #voiceover("Excellent work! Let's solve this quadratic equation step by step. We start with the equation x squared plus 4x plus 3 equals zero.")
  ]
  #only("2")[
    #voiceover("First, let's identify the coefficients a, b, and c in our quadratic equation of the form a x squared plus b x plus c equals zero.")
  ]
  #only("3")[
    #voiceover("a is the coefficient of x squared, which is 1 in this case.")
  ]
  #only("4")[
    #voiceover("b is the coefficient of x, which is 4.")
  ]
  #only("5")[
    #voiceover("And c is the constant term, which is 3.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Factoring the Equation]
  #v(40pt)
  #only("1-")[Step 2: Find factors of $a dot c$]
  #v(10pt)
  #only("2-")[- $a dot c = 1 dot 3 = 3$]
  #v(10pt)
  #only("3-")[- Factors of 3: 1 and 3]
  #v(20pt)
  #only("4-")[Step 3: Find sum of factors equal to $b$]
  #v(10pt)
  #only("5-")[- $1 + 3 = 4$ (which equals $b$)]
  
  #only("1")[
    #voiceover("Now, let's factor the equation. We need to find two numbers that multiply to give a times c, and add up to b.")
  ]
  #only("2")[
    #voiceover("a times c is 1 times 3, which equals 3.")
  ]
  #only("3")[
    #voiceover("The factors of 3 are 1 and 3.")
  ]
  #only("4")[
    #voiceover("Next, we check if these factors add up to b, which is 4.")
  ]
  #only("5")[
    #voiceover("Indeed, 1 plus 3 equals 4, which is our b value. Perfect!")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Writing in Factored Form]
  #v(40pt)
  #only("1-")[Step 4: Rewrite the middle term]
  #v(10pt)
  #only("2-")[- $x^2 + x + 3x + 3 = 0$]
  #v(20pt)
  #only("3-")[Step 5: Group terms]
  #v(10pt)
  #only("4-")[- $(x^2 + x) + (3x + 3) = 0$]
  #v(20pt)
  #only("5-")[Step 6: Factor out common terms]
  #v(10pt)
  #only("6-")[- $x(x + 1) + 3(x + 1) = 0$]
  
  #only("1")[
    #voiceover("Now we can rewrite our equation in factored form. First, let's split the middle term.")
  ]
  #only("2")[
    #voiceover("Our equation becomes x squared plus x plus 3x plus 3 equals zero.")
  ]
  #only("3")[
    #voiceover("Next, we group the terms.")
  ]
  #only("4")[
    #voiceover("This gives us x squared plus x, plus 3x plus 3, equals zero.")
  ]
  #only("5")[
    #voiceover("Now, we can factor out the common terms from each group.")
  ]
  #only("6")[
    #voiceover("We get x times x plus 1, plus 3 times x plus 1, equals zero.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Steps]
  #v(40pt)
  #only("1-")[Step 7: Factor out $(x + 1)$]
  #v(10pt)
  #only("2-")[- $(x + 1)(x + 3) = 0$]
  #v(20pt)
  #only("3-")[Step 8: Apply zero product property]
  #v(10pt)
  #only("4-")[- $x + 1 = 0$ or $x + 3 = 0$]
  #v(20pt)
  #only("5-")[Step 9: Solve for $x$]
  #v(10pt)
  #only("6-")[- $x = -1$ or $x = -3$]
  
  #only("1")[
    #voiceover("We can now factor out x plus 1, which is common to both terms.")
  ]
  #only("2")[
    #voiceover("This gives us x plus 1 times x plus 3 equals zero.")
  ]
  #only("3")[
    #voiceover("Now we can apply the zero product property, which states that if the product of factors is zero, then one of the factors must be zero.")
  ]
  #only("4")[
    #voiceover("So, either x plus 1 equals zero, or x plus 3 equals zero.")
  ]
  #only("5")[
    #voiceover("Finally, we solve for x.")
  ]
  #only("6")[
    #voiceover("We get x equals negative 1 or x equals negative 3. These are our solutions!")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Solution]
  #v(40pt)
  #only("1-")[The solutions to $x^2 + 4x + 3 = 0$ are:]
  #v(20pt)
  #only("2-")[- $x = -1$]
  #v(10pt)
  #only("3-")[- $x = -3$]
  #v(30pt)
  #only("4-")[💡 Always check your solutions!]
  
  #only("1")[
    #voiceover("Let's summarize our solution.")
  ]
  #only("2")[
    #voiceover("We found that x equals negative 1")
  ]
  #only("3")[
    #voiceover("or x equals negative 3 are the solutions to our quadratic equation.")
  ]
  #only("4")[
    #voiceover("Remember, it's always a good practice to check your solutions by plugging them back into the original equation. Great job solving this quadratic equation by factoring!")
  ]
]