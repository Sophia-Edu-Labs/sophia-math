#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Solving Quadratic Equations by Factoring]
  #v(40pt)
  #only("1-")[Equation: $x^2 + 5x + 6 = 0$]
  #v(20pt)
  #only("2-")[Step 1: Identify $a$, $b$, and $c$]
  #v(10pt)
  #only("3-")[- $a = 1$]
  #only("4-")[- $b = 5$]
  #only("5-")[- $c = 6$]
  
  #only("1")[
    #voiceover("Excellent work! Let's solve this quadratic equation step by step. We start with the equation x squared plus 5x plus 6 equals zero.")
  ]
  #only("2")[
    #voiceover("First, we need to identify the coefficients a, b, and c in our quadratic equation of the form a x squared plus b x plus c equals zero.")
  ]
  #only("3")[
    #voiceover("a is the coefficient of x squared, which is 1 in this case.")
  ]
  #only("4")[
    #voiceover("b is the coefficient of x, which is 5.")
  ]
  #only("5")[
    #voiceover("And c is the constant term, which is 6.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Finding Factors]
  #v(40pt)
  #only("1-")[Step 2: Find factors of $a dot c = 1 dot 6 = 6$]
  #v(20pt)
  #only("2-")[Factors of 6: $1$, $2$, $3$, $6$]
  #v(20pt)
  #only("3-")[We need two factors that add up to $b = 5$]
  #v(20pt)
  #only("4-")[Solution: $2$ and $3$]
  
  #only("1")[
    #voiceover("Next, we need to find the factors of a times c, which is 1 times 6, giving us 6.")
  ]
  #only("2")[
    #voiceover("The factors of 6 are 1, 2, 3, and 6.")
  ]
  #only("3")[
    #voiceover("We're looking for two factors that add up to b, which is 5.")
  ]
  #only("4")[
    #voiceover("The factors we need are 2 and 3, because 2 plus 3 equals 5.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Rewriting the Equation]
  #v(40pt)
  #only("1-")[Step 3: Rewrite the middle term]
  #v(20pt)
  #only("2-")[$x^2 + 2x + 3x + 6 = 0$]
  #v(20pt)
  #only("3-")[Step 4: Group the terms]
  #v(20pt)
  #only("4-")[$(x^2 + 2x) + (3x + 6) = 0$]
  
  #only("1")[
    #voiceover("Now, let's rewrite our equation using these factors.")
  ]
  #only("2")[
    #voiceover("We split the middle term 5x into 2x plus 3x. So our equation becomes x squared plus 2x plus 3x plus 6 equals zero.")
  ]
  #only("3")[
    #voiceover("Next, we group the terms.")
  ]
  #only("4")[
    #voiceover("We get x squared plus 2x in parentheses, plus 3x plus 6 in parentheses, equals zero.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Factoring]
  #v(40pt)
  #only("1-")[Step 5: Factor out the common factor in each group]
  #v(20pt)
  #only("2-")[$x(x + 2) + 3(x + 2) = 0$]
  #v(20pt)
  #only("3-")[Step 6: Factor out the common binomial]
  #v(20pt)
  #only("4-")[$(x + 2)(x + 3) = 0$]
  
  #only("1")[
    #voiceover("Now we factor out the common factor in each group.")
  ]
  #only("2")[
    #voiceover("From the first group, we factor out x, and from the second group, we factor out 3. This gives us x times x plus 2, plus 3 times x plus 2, equals zero.")
  ]
  #only("3")[
    #voiceover("Finally, we factor out the common binomial x plus 2.")
  ]
  #only("4")[
    #voiceover("This gives us x plus 2 times x plus 3 equals zero.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Solving the Equation]
  #v(40pt)
  #only("1-")[Step 7: Use the zero product property]
  #v(20pt)
  #only("2-")[$(x + 2) = 0$ or $(x + 3) = 0$]
  #v(20pt)
  #only("3-")[Step 8: Solve each linear equation]
  #v(20pt)
  #only("4-")[$x = -2$ or $x = -3$]
  
  #only("1")[
    #voiceover("Now we can use the zero product property, which states that if the product of factors is zero, then one of the factors must be zero.")
  ]
  #only("2")[
    #voiceover("So, either x plus 2 equals zero, or x plus 3 equals zero.")
  ]
  #only("3")[
    #voiceover("Finally, we solve each of these linear equations.")
  ]
  #only("4")[
    #voiceover("We get x equals negative 2 or x equals negative 3. These are our solutions!")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)
  #only("1-")[The solutions to $x^2 + 5x + 6 = 0$ are:]
  #v(20pt)
  #only("2-")[- $x = -2$]
  #only("3-")[- $x = -3$]
  
  #only("1")[
    #voiceover("To summarize, we've solved the quadratic equation x squared plus 5x plus 6 equals zero.")
  ]
  #only("2")[
    #voiceover("Our first solution is x equals negative 2.")
  ]
  #only("3")[
    #voiceover("And our second solution is x equals negative 3. Great job solving this quadratic equation by factoring!")
  ]
]