#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Simplifying $(27^(1/3))^2$]
#v(40pt)
#only("1-")[- Not quite...]
#v(20pt)
#only("2-")[- Let's solve this step-by-step 📝]
#only("1")[
#voiceover("That's not quite right. Let's review the correct solution.")
]
#only("2")[
#voiceover("Now let's go through the solution step-by-step.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Apply the Power Rule]
#v(40pt)
#only("1-")[- $(a^(m/n))^p = a^((m p)/n)$]
#v(20pt)
#only("2-")[- $(27^(1/3))^2 = 27^((1*2)/3) = 27^(2/3)$]
#only("1")[
#voiceover("First, we apply the power rule for rational exponents. This rule states that a to the power of m over n, all raised to the power of p, equals a to the power of m times p over n.")
]
#only("2")[
#voiceover("In our case, a is 27, m is 1, n is 3, and p is 2. So we get 27 to the power of 1 times 2 over 3, which simplifies to 27 to the power of 2 over 3.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Evaluate the Expression]
#v(40pt)
#only("1-")[- $27^(2/3) = root(3, 27^2) = root(3, 729) = 9$]
#v(20pt)
#only("2-")[- $27^(1/3) = root(3, 27) = 3$]
#v(20pt)
#only("3-")[- $3^2 = 9$]
#only("1")[
#voiceover("Next, we evaluate the expression 27 to the power of 2 over 3. This is equivalent to the cube root of 27 squared. 27 squared is 729, so we're finding the cube root of 729.")
]
#only("2")[
#voiceover("We know that the cube root of 27 is 3, because 3 cubed equals 27.")
]
#only("3")[
#voiceover("And 3 squared equals 9.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Final Answer]
#v(40pt)
#only("1-")[- $(27^(1/3))^2 = 9$ ✅]
#only("1")[
#voiceover("Therefore, our final answer is 9. Great work!")
]
]