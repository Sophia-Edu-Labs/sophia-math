#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Great job! You've correctly solved the quadratic equation. Let's go through the solution step by step to understand the process better.")
]

#text(size: 30pt, weight: "bold")[Solving Quadratic Equations by Factoring]

#v(40pt)

#only("2-")[#text()[$ x^2 + 3x - 10 = 0 $]]

#only("2")[
#voiceover("We start with the quadratic equation x squared plus three x minus ten equals zero.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Identify the Terms]

#v(40pt)

#only("1-")[- $a = 1$ (coefficient of $x^2$)]
#v(10pt)
#only("2-")[- $b = 3$ (coefficient of $x$)]
#v(10pt)
#only("3-")[- $c = -10$ (constant term)]

#only("1")[
#voiceover("First, let's identify the terms. The coefficient of x squared, which we call a, is 1.")
]

#only("2")[
#voiceover("The coefficient of x, which we call b, is 3.")
]

#only("3")[
#voiceover("And the constant term, which we call c, is negative 10.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Find Two Numbers]

#v(40pt)

#only("1-")[Find two numbers that:]
#v(10pt)
#only("2-")[- Multiply to give $a times c = 1 times (-10) = -10$]
#v(10pt)
#only("3-")[- Add up to give $b = 3$]

#only("1")[
#voiceover("Now, we need to find two numbers with special properties.")
]

#only("2")[
#voiceover("These two numbers should multiply to give a times c, which is 1 times negative 10, or negative 10.")
]

#only("3")[
#voiceover("And they should add up to give b, which is 3.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 3: Identify the Numbers]

#v(40pt)

#only("1-")[The two numbers are: $5$ and $-2$]
#v(20pt)
#only("2-")[- $5 times (-2) = -10$ ✅]
#v(10pt)
#only("3-")[- $5 + (-2) = 3$ ✅]

#only("1")[
#voiceover("The two numbers that satisfy these conditions are 5 and negative 2.")
]

#only("2")[
#voiceover("We can verify that 5 times negative 2 equals negative 10.")
]

#only("3")[
#voiceover("And 5 plus negative 2 equals 3.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 4: Rewrite the Middle Term]

#v(40pt)

#only("1-")[$ x^2 + 3x - 10 = 0 $]
#v(20pt)
#only("2-")[$ x^2 + 5x - 2x - 10 = 0 $]

#only("1")[
#voiceover("Now, let's rewrite our original equation.")
]

#only("2")[
#voiceover("We split the middle term, 3x, into 5x minus 2x. This doesn't change the equation, but prepares us for the next step.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 5: Factor by Grouping]

#v(40pt)

#only("1-")[$ x^2 + 5x - 2x - 10 = 0 $]
#v(20pt)
#only("2-")[$ (x^2 + 5x) + (-2x - 10) = 0 $]
#v(20pt)
#only("3-")[$ x(x + 5) - 2(x + 5) = 0 $]
#v(20pt)
#only("4-")[$ (x + 5)(x - 2) = 0 $]

#only("1")[
#voiceover("Now we can factor by grouping. First, we group the first two terms and the last two terms.")
]

#only("2")[
#voiceover("Then, we factor out the common factor from each group. From the first group, we factor out x.")
]

#only("3")[
#voiceover("From the second group, we factor out negative 2. We now see that x plus 5 is a common factor.")
]

#only("4")[
#voiceover("We can factor this out, leaving us with x plus 5 times x minus 2 equals zero.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 6: Solve the Equation]

#v(40pt)

#only("1-")[$ (x + 5)(x - 2) = 0 $]
#v(20pt)
#only("2-")[Either $x + 5 = 0$ or $x - 2 = 0$]
#v(20pt)
#only("3-")[$ x = -5 $ or $ x = 2 $]

#only("1")[
#voiceover("Now we can solve this equation. When a product of factors is zero, one of the factors must be zero.")
]

#only("2")[
#voiceover("So either x plus 5 equals zero, or x minus 2 equals zero.")
]

#only("3")[
#voiceover("Solving these, we get x equals negative 5 or x equals 2. These are our solutions.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Final Answer]

#v(40pt)

#only("1-")[The solutions to $x^2 + 3x - 10 = 0$ are:]
#v(20pt)
#only("2-")[$ x = -5 $ or $ x = 2 $]

#only("1")[
#voiceover("So, our final answer is:")
]

#only("2")[
#voiceover("The solutions to x squared plus 3x minus 10 equals zero are x equals negative 5 or x equals 2. Great job solving this quadratic equation by factoring!")
]
]