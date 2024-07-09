#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Not quite. Let's go through the correct solution step-by-step to understand it better.")
]

#text(size: 30pt, weight: "bold")[Solving Quadratic Equations by Factoring]

#v(40pt)

#only("2-")[#text()[$ x^2 + 4x + 4 = 0 $]]

#only("2")[
#voiceover("We start with the quadratic equation x squared plus four x plus four equals zero.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Identify the Quadratic]

#v(40pt)

#only("1-")[- General form: $a x^2 + b x + c = 0$]
#v(20pt)
#only("2-")[- Our equation: $x^2 + 4x + 4 = 0$]
#v(20pt)
#only("3-")[- $a = 1$, $b = 4$, $c = 4$]

#only("1")[
#voiceover("First, let's identify our quadratic. The general form of a quadratic equation is a x squared plus b x plus c equals zero.")
]

#only("2")[
#voiceover("In our case, we have x squared plus four x plus four equals zero.")
]

#only("3")[
#voiceover("So, a equals one, b equals four, and c equals four.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Factoring]

#v(40pt)

#only("1-")[- Look for a perfect square trinomial]
#v(20pt)
#only("2-")[- $x^2 + 4x + 4$ is a perfect square trinomial]
#v(20pt)
#only("3-")[- It can be written as $(x + 2)^2$]

#only("1")[
#voiceover("Next, we look for a way to factor this equation. In this case, we can see that x squared plus four x plus four is a perfect square trinomial.")
]

#only("2")[
#voiceover("A perfect square trinomial has the form x squared plus two a x plus a squared, where a is some number.")
]

#only("3")[
#voiceover("In our case, a is two. So we can rewrite our equation as x plus two, all squared.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 3: Rewrite the Equation]

#v(40pt)

#only("1-")[$ x^2 + 4x + 4 = 0 $]
#v(20pt)
#only("2-")[$ (x + 2)^2 = 0 $]

#only("1")[
#voiceover("Now, let's rewrite our original equation using this factored form.")
]

#only("2")[
#voiceover("Our equation becomes x plus two, all squared, equals zero.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 4: Solve the Equation]

#v(40pt)

#only("1-")[$ (x + 2)^2 = 0 $]
#v(20pt)
#only("2-")[$ x + 2 = 0 $]
#v(20pt)
#only("3-")[$ x = -2 $]

#only("1")[
#voiceover("To solve this equation, we note that a square is only equal to zero if the term inside the square is zero.")
]

#only("2")[
#voiceover("So, we can say that x plus two must equal zero.")
]

#only("3")[
#voiceover("Solving this, we get x equals negative two.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Final Answer]

#v(40pt)

#only("1-")[The solution is $x = -2$ 🎉]

#only("1")[
#voiceover("Therefore, the solution to our quadratic equation x squared plus four x plus four equals zero is x equals negative two. Well done on solving this problem!")
]
]