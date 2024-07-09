#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Not quite, but let's go through the correct solution step by step to understand it better.")
]

#text(size: 30pt, weight: "bold")[Solving Quadratic Equations by Factoring]

#v(40pt)

#only("2-")[#text()[$ x^2 - 5x + 6 = 0 $]]

#only("2")[
#voiceover("We start with the quadratic equation x squared minus 5x plus 6 equals zero.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Identify the Quadratic Equation]

#v(40pt)

#only("1-")[- General form: $a x^2 + b x + c = 0$]
#v(20pt)
#only("2-")[- Our equation: $x^2 - 5x + 6 = 0$]
#v(20pt)
#only("3-")[- $a = 1$, $b = -5$, $c = 6$]

#only("1")[
#voiceover("First, let's identify the parts of our quadratic equation. The general form is a x squared plus b x plus c equals zero.")
]

#only("2")[
#voiceover("In our case, we have x squared minus 5x plus 6 equals zero.")
]

#only("3")[
#voiceover("So, a equals 1, b equals negative 5, and c equals 6.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Factor the Equation]

#v(40pt)

#only("1-")[- Find two numbers that:
  - Multiply to give $a c = 1 dot 6 = 6$
  - Add to give $b = -5$]

#v(20pt)

#only("2-")[- The numbers are -2 and -3]

#only("1")[
#voiceover("To factor, we need to find two numbers that multiply to give a times c, which is 1 times 6, or 6, and add to give b, which is negative 5.")
]

#only("2")[
#voiceover("These numbers are negative 2 and negative 3.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 3: Write the Factored Form]

#v(40pt)

#only("1-")[$ x^2 - 5x + 6 = 0 $]
#v(20pt)
#only("2-")[$ (x - 2)(x - 3) = 0 $]

#only("1")[
#voiceover("Now we can rewrite our equation in factored form.")
]

#only("2")[
#voiceover("The factored form is x minus 2 times x minus 3 equals zero.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 4: Apply the Zero Product Property]

#v(40pt)

#only("1-")[- If $a dot b = 0$, then either $a = 0$ or $b = 0$ (or both)]
#v(20pt)
#only("2-")[- So, either $x - 2 = 0$ or $x - 3 = 0$]

#only("1")[
#voiceover("Now we apply the zero product property. This states that if a times b equals zero, then either a equals zero or b equals zero, or both.")
]

#only("2")[
#voiceover("In our case, this means either x minus 2 equals zero, or x minus 3 equals zero.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 5: Solve for x]

#v(40pt)

#only("1-")[$ x - 2 = 0 $ or $ x - 3 = 0 $]
#v(20pt)
#only("2-")[$ x = 2 $ or $ x = 3 $]

#only("1")[
#voiceover("Finally, we solve each of these linear equations.")
]

#only("2")[
#voiceover("We get x equals 2 or x equals 3.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Final Answer]

#v(40pt)

#only("1-")[The solutions are $x = 2$ or $x = 3$ 🎉]

#only("1")[
#voiceover("Therefore, the solutions to our quadratic equation are x equals 2 or x equals 3. Great job solving this equation!")
]
]