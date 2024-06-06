#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Great Job! 🌟]
#v(40pt)
#only("1-")[That's the correct answer! Let's see how we can solve this step by step. 📝]
#only("1")[
#voiceover("That's not quite right. Let's review the correct solution step by step.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Isolate]
#v(40pt)
#only("1-")[We have: $x^(2/3) = 9$]
#v(20pt)
#only("2-")[The term with the exponent is already isolated. ✅]
#only("1")[
#voiceover("We start with the equation x to the power of 2/3 equals 9.")
]
#only("2")[
#voiceover("We see that the term with the exponent, x to the power of 2/3, is already isolated on one side of the equation. So we can move to the next step.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Reciprocal]
#v(40pt)
#only("1-")[To remove the exponent, we raise both sides to the reciprocal of the exponent.]
#v(20pt)
#only("2-")[The reciprocal of $2/3$ is $3/2$. 🔄]
#v(20pt)
#only("3-")[$(x^(2/3))^(3/2) = 9^(3/2)$]
#only("1")[
#voiceover("To remove the exponent, we raise both sides of the equation to the reciprocal of the exponent.")
]
#only("2")[
#voiceover("The reciprocal of 2/3 is 3/2.")
]
#only("3")[
#voiceover("So we raise both sides to the power of 3/2. On the left side, we have x to the power of 2/3, all raised to the power of 3/2. On the right side, we have 9 raised to the power of 3/2.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 3: Simplify]
#v(40pt)
#only("1-")[Using the power rule, $(x^(2/3))^(3/2) = x^((2/3) dot (3/2)) = x^1 = x$. 📏]
#v(20pt)
#only("2-")[On the right side, $9^(3/2) = (9^(1/2))^3 = 3^3 = 27$. 🧮]
#v(20pt)
#only("3-")[So, $x = 27$. 🎉]
#only("1")[
#voiceover("On the left side, we can use the power rule. x to the power of 2/3, all raised to the power of 3/2, equals x to the power of 2/3 times 3/2, which equals x to the power of 1, which is just x.")
]
#only("2")[
#voiceover("On the right side, 9 to the power of 3/2 can be rewritten as the cube of 9 to the power of 1/2. 9 to the power of 1/2 is 3, and 3 cubed is 27.")
]
#only("3")[
#voiceover("So, we have simplified the equation to x equals 27. And that's our solution!")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[To solve $x^(2/3) = 9$:]
#v(20pt)
#only("2-")[1. The term with the exponent is already isolated. ✅]
#v(20pt)
#only("3-")[2. Raise both sides to the reciprocal of the exponent: $(x^(2/3))^(3/2) = 9^(3/2)$. 🔄]
#v(20pt)
#only("4-")[3. Simplify using the power rule: $x = 27$. 🧮]
#only("1")[
#voiceover("To summarize, to solve x to the power of 2/3 equals 9:")
]
#only("2")[
#voiceover("First, we noted that the term with the exponent was already isolated.")
]
#only("3")[
#voiceover("Second, we raised both sides to the reciprocal of the exponent, which was 3/2.")
]
#only("4")[
#voiceover("Finally, we simplified using the power rule and found that x equals 27. Great work!")
]
]