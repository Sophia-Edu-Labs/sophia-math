#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Solving Quadratic Equations by Factoring]
  #v(40pt)
  #only("1-")[Equation: $x^2 - 9x + 14 = 0$]
  #v(20pt)
  #only("2-")[Step 1: Identify $a$, $b$, and $c$]
  #v(10pt)
  #only("3-")[- $a = 1$]
  #only("4-")[- $b = -9$]
  #only("5-")[- $c = 14$]
  
  #only("1")[#voiceover("Great job on solving this quadratic equation! Let's go through the solution step-by-step. We start with the equation x squared minus 9x plus 14 equals zero.")]
  #only("2")[#voiceover("First, let's identify the coefficients a, b, and c in the standard form ax squared plus bx plus c equals zero.")]
  #only("3")[#voiceover("a is the coefficient of x squared, which is 1.")]
  #only("4")[#voiceover("b is the coefficient of x, which is negative 9.")]
  #only("5")[#voiceover("And c is the constant term, which is 14.")]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Finding Factors]
  #v(40pt)
  #only("1-")[Step 2: Find two numbers that:] 
  #v(10pt)
  #only("2-")[- Multiply to give $a dot c = 1 dot 14 = 14$]
  #v(10pt)
  #only("3-")[- Add up to $b = -9$]
  #v(20pt)
  #only("4-")[The numbers are $-2$ and $-7$]
  
  #only("1")[#voiceover("Now, we need to find two numbers that satisfy two conditions.")]
  #only("2")[#voiceover("First, when multiplied together, they should equal the product of a and c, which is 1 times 14, or 14.")]
  #only("3")[#voiceover("Second, when added together, they should equal b, which is negative 9.")]
  #only("4")[#voiceover("The numbers that satisfy these conditions are negative 2 and negative 7.")]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Factoring the Equation]
  #v(40pt)
  #only("1-")[Step 3: Rewrite the middle term]
  #v(10pt)
  #only("2-")[$(x^2 - 2x - 7x + 14 = 0)$]
  #v(20pt)
  #only("3-")[Step 4: Factor by grouping]
  #v(10pt)
  #only("4-")[$(x(x - 2) - 7(x - 2) = 0)$]
  #v(10pt)
  #only("5-")[$(x - 7)(x - 2) = 0$]
  
  #only("1")[#voiceover("Now we can factor the equation. First, we'll rewrite the middle term using our two numbers.")]
  #only("2")[#voiceover("This gives us x squared minus 2x minus 7x plus 14 equals zero.")]
  #only("3")[#voiceover("Next, we'll factor by grouping.")]
  #only("4")[#voiceover("We can factor out x minus 2 from the first two terms, and negative 7 from the last two terms.")]
  #only("5")[#voiceover("This simplifies to x minus 7 times x minus 2 equals zero.")]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Solving the Equation]
  #v(40pt)
  #only("1-")[Step 5: Use the zero product property]
  #v(10pt)
  #only("2-")[Either $(x - 7 = 0)$ or $(x - 2 = 0)$]
  #v(20pt)
  #only("3-")[Step 6: Solve for $x$]
  #v(10pt)
  #only("4-")[- $x = 7$ or $x = 2$]
  
  #only("1")[#voiceover("To solve this equation, we'll use the zero product property. This states that if the product of factors is zero, then one of the factors must be zero.")]
  #only("2")[#voiceover("So, either x minus 7 equals zero, or x minus 2 equals zero.")]
  #only("3")[#voiceover("Finally, we solve for x.")]
  #only("4")[#voiceover("We find that x equals 7 or x equals 2. These are our solutions!")]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Final Answer]
  #v(40pt)
  #only("1-")[The solutions to $x^2 - 9x + 14 = 0$ are:]
  #v(20pt)
  #only("2-")[#text(size: 24pt)[x = 2 or x = 7]]
  #v(40pt)
  #only("3-")[💡 Always check your solutions!]
  
  #only("1")[#voiceover("So, our final answer is that the solutions to x squared minus 9x plus 14 equals zero are:")]
  #only("2")[#voiceover("x equals 2 or x equals 7.")]
  #only("3")[#voiceover("Great job solving this quadratic equation! Remember, it's always a good idea to check your solutions by plugging them back into the original equation.")]
]