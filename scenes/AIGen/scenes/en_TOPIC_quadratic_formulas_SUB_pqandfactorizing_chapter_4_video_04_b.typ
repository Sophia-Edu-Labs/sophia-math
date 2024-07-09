#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Solving Quadratic Equations by Factoring]
#v(40pt)

#only("1-")[Equation: $x^2 - 4x + 4 = 0$]
#v(20pt)

#only("2-")[Step 1: Identify $a$, $b$, and $c$]
#v(10pt)
#only("2-")[- $a = 1$]
#v(5pt)
#only("2-")[- $b = -4$]
#v(5pt)
#only("2-")[- $c = 4$]

#only("1")[
#voiceover("Not quite, but don't worry! Let's walk through the correct solution step-by-step. We're dealing with the quadratic equation x squared minus 4x plus 4 equals zero.")
]

#only("2")[
#voiceover("First, let's identify the coefficients. In the general form of a x squared plus b x plus c, we have a equals 1, b equals negative 4, and c equals 4.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Factoring the Equation]
#v(40pt)

#only("1-")[Step 2: Rewrite as $(x + p)(x + q) = 0$]
#v(20pt)
#only("2-")[Where $p + q = -b/a$ and $p dot q = c/a$]
#v(20pt)
#only("3-")[$(x - 2)(x - 2) = 0$]

#only("1")[
#voiceover("Now, let's factor the equation. We want to rewrite it in the form (x plus p)(x plus q) equals zero.")
]

#only("2")[
#voiceover("To find p and q, we use two conditions: p plus q equals negative b over a, and p times q equals c over a.")
]

#only("3")[
#voiceover("In this case, we get (x minus 2)(x minus 2) equals zero. Notice that both factors are the same, which means this is a perfect square trinomial.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Solving the Equation]
#v(40pt)

#only("1-")[Step 3: Solve $(x - 2)(x - 2) = 0$]
#v(20pt)
#only("2-")[Either $x - 2 = 0$ or $x - 2 = 0$]
#v(20pt)
#only("3-")[Solution: $x = 2$]

#only("1")[
#voiceover("Now we solve the factored equation. For a product to be zero, one of its factors must be zero.")
]

#only("2")[
#voiceover("In this case, we have x minus 2 equals zero or x minus 2 equals zero. Both equations are the same.")
]

#only("3")[
#voiceover("Solving this, we get x equals 2. This is our solution, and it's a double root because it appears twice in the factored form.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Verifying the Solution]
#v(40pt)

#only("1-")[Step 4: Check the solution]
#v(20pt)
#only("2-")[Substitute $x = 2$ into original equation:]
#v(10pt)
#only("2-")[$(2)^2 - 4(2) + 4 = 0$]
#v(10pt)
#only("3-")[$4 - 8 + 4 = 0$]
#v(10pt)
#only("4-")[$0 = 0$ ✅]

#only("1")[
#voiceover("Let's verify our solution by substituting it back into the original equation.")
]

#only("2")[
#voiceover("We replace x with 2 in x squared minus 4x plus 4 equals zero.")
]

#only("3")[
#voiceover("This gives us 4 minus 8 plus 4 equals zero.")
]

#only("4")[
#voiceover("Which simplifies to zero equals zero. This confirms our solution is correct!")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)

#only("1-")[- Original equation: $x^2 - 4x + 4 = 0$]
#v(20pt)
#only("2-")[- Factored form: $(x - 2)(x - 2) = 0$]
#v(20pt)
#only("3-")[- Solution: $x = 2$ (double root)]

#only("1")[
#voiceover("To summarize, we started with the equation x squared minus 4x plus 4 equals zero.")
]

#only("2")[
#voiceover("We factored it into (x minus 2)(x minus 2) equals zero.")
]

#only("3")[
#voiceover("And found the solution x equals 2, which is a double root. Great job solving this quadratic equation by factoring!")
]
]