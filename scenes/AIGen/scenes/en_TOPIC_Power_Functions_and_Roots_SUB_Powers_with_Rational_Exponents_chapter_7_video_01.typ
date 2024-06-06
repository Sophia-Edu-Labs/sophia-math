#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Solving Equations with Rational Exponents]
#v(40pt)
#only("1-")[- Example: $x^(2/3) = 8$]
#v(20pt)
#only("2-")[- Step 1: Isolate the term with the exponent]
#v(20pt)
#only("3-")[- Step 2: Raise both sides to the reciprocal of the exponent]
#only("1")[
#voiceover("Let's learn how to solve equations with rational exponents. Consider the equation x to the power of two-thirds equals eight.")
]
#only("2")[
#voiceover("The first step is to isolate the term with the exponent on one side of the equation. In this case, it's already isolated.")
]
#only("3")[
#voiceover("Next, we raise both sides of the equation to the reciprocal of the exponent. The reciprocal of two-thirds is three-halves.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Solving the Example]
#v(40pt)
#only("1-")[$(x^(2/3))^(3/2) = 8^(3/2)$]
#v(20pt)
#only("2-")[$(x^((2/3)dot(3/2))) = 8^(3/2)$]
#v(20pt)
#only("3-")[$x^1 = 8^(3/2)$]
#v(20pt)
#only("4-")[$x = 8^(3/2) = (2^3)^(3/2) = 2^(3dot(3/2)) = 2^4 = 16$]
#only("1")[
#voiceover("Raising both sides to the power of three-halves, we get x to the power of two-thirds, all raised to the power of three-halves, equals eight to the power of three-halves.")
]
#only("2")[
#voiceover("Using the power rule for exponents, two-thirds times three-halves equals one. So, on the left side, we have x to the power of one.")
]
#only("3")[
#voiceover("x to the power of one is just x. So, we have x equals eight to the power of three-halves.")
]
#only("4")[
#voiceover("Eight to the power of three-halves is the same as two to the power of three, all raised to the power of three-halves, which equals two to the power of four, which equals sixteen. Therefore, x equals sixteen.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[1️⃣ Isolate the term with the exponent]
#v(20pt)
#only("2-")[2️⃣ Raise both sides to the reciprocal of the exponent]
#v(20pt)
#only("3-")[3️⃣ Simplify and solve]
#only("1")[
#voiceover("To summarize, when solving equations with rational exponents, the first step is to isolate the term with the exponent.")
]
#only("2")[
#voiceover("Then, raise both sides of the equation to the reciprocal of the exponent.")
]
#only("3")[
#voiceover("Finally, simplify the resulting expression and solve for the variable. With these steps, you can confidently tackle equations involving rational exponents!")
]
]