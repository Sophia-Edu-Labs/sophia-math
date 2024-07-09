#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Great job on solving this quadratic equation! Let's go through the solution step by step to understand how we arrived at the answer.")
]

#text(size: 30pt, weight: "bold")[Solving Quadratic Equations by Factoring]

#v(40pt)

#only("1-")[Equation: $x^2 - 8x + 16 = 0$]

#only("1")[
#voiceover("We start with the quadratic equation x squared minus 8x plus 16 equals zero.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Identify the Quadratic]
#v(40pt)
#only("1-")[- $a = 1$]
#v(20pt)
#only("2-")[- $b = -8$]
#v(20pt)
#only("3-")[- $c = 16$]

#only("1")[
#voiceover("First, let's identify the coefficients of our quadratic equation. The coefficient of x squared, which we call a, is 1.")
]
#only("2")[
#voiceover("The coefficient of x, which we call b, is negative 8.")
]
#only("3")[
#voiceover("And the constant term, which we call c, is 16.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Recognize Perfect Square]
#v(40pt)
#only("1-")[- $(x - 4)^2 = x^2 - 8x + 16$ 🔍]
#v(20pt)
#only("2-")[- Our equation matches this form! ✅]

#only("1")[
#voiceover("Now, let's look at the form of our equation. It's actually a perfect square trinomial. The general form of a perfect square trinomial is x minus some number squared, which expands to x squared minus two times that number times x, plus that number squared.")
]
#only("2")[
#voiceover("Our equation matches this form perfectly, with the number being 4. So we can rewrite our equation as x minus 4 squared equals zero.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 3: Solve the Equation]
#v(40pt)
#only("1-")[$(x - 4)^2 = 0$]
#v(20pt)
#only("2-")[$(x - 4)^2 = 0$]
#only("2-")[$(x - 4) = 0$ ⟹ $x = 4$]

#only("1")[
#voiceover("Now we have the equation x minus 4 squared equals zero.")
]
#only("2")[
#voiceover("For this to be true, x minus 4 must equal zero, because any number squared is only zero if the number itself is zero. So, solving x minus 4 equals zero, we get x equals 4.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Final Answer]
#v(40pt)
#only("1-")[Solution: $x = 4$ 🎉]

#only("1")[
#voiceover("Therefore, the solution to our quadratic equation x squared minus 8x plus 16 equals zero is x equals 4. This is our final answer!")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Verification]
#v(40pt)
#only("1-")[Let's verify: $4^2 - 8(4) + 16 = 0$?]
#v(20pt)
#only("2-")[$16 - 32 + 16 = 0$]
#v(20pt)
#only("3-")[$0 = 0$ ✅]

#only("1")[
#voiceover("To verify our solution, let's plug 4 back into our original equation. We get 4 squared minus 8 times 4 plus 16 equals zero.")
]
#only("2")[
#voiceover("Simplifying, we get 16 minus 32 plus 16 equals zero.")
]
#only("3")[
#voiceover("This simplifies to zero equals zero, which is true! This confirms that our solution is correct.")
]
]