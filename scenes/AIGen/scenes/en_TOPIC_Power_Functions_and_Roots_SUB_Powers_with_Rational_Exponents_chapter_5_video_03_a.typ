#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Simplifying $(27/8)^(2/3)$]
#v(40pt)
#only("1-")[Great job! 🎉 You correctly simplified the expression.]
#v(20pt)
#only("2-")[Let's review the step-by-step solution:]
#only("1")[
#voiceover("Great job! You correctly simplified the expression 27 over 8 raised to the power of 2 over 3. Let's review the step-by-step solution.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Apply the Exponent]
#v(40pt)
#only("1-")[$(27/8)^(2/3) = (27^(2/3))/(8^(2/3))$]
#v(20pt)
#only("2-")[- Apply the exponent to both numerator and denominator 📏]
#only("1")[
#voiceover("First, we apply the exponent of 2 over 3 to both the numerator and denominator. This gives us 27 raised to the power of 2 over 3, divided by 8 raised to the power of 2 over 3.")
]
#only("2")[
#voiceover("Remember, when dealing with rational exponents and fractional bases, we apply the exponent to both the numerator and the denominator.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Simplify the Numerator]
#v(40pt)
#only("1-")[$(27^(2/3))/(8^(2/3)) = (root(3,27^2))/(8^(2/3))$]
#v(20pt)
#only("2-")[- $a^(m/n) = root(n,a^m)$ 🌱]
#only("1")[
#voiceover("Next, we simplify the numerator. 27 raised to the power of 2 over 3 can be rewritten as the cube root of 27 squared.")
]
#only("2")[
#voiceover("This is because a raised to the power of m over n is equal to the nth root of a raised to the power of m.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 3: Simplify the Denominator]
#v(40pt)
#only("1-")[$(root(3,27^2))/(8^(2/3)) = (root(3,729))/(root(3,8^2))$]
#v(20pt)
#only("2-")[- $27^2 = 729$ and $8^2 = 64$ 🧮]
#only("1")[
#voiceover("Similarly, we simplify the denominator. 8 raised to the power of 2 over 3 can be rewritten as the cube root of 8 squared.")
]
#only("2")[
#voiceover("We calculate 27 squared, which is 729, and 8 squared, which is 64.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 4: Simplify the Roots]
#v(40pt)
#only("1-")[$(root(3,729))/(root(3,64)) = 9/4$]
#v(20pt)
#only("2-")[- $root(3,729) = 9$ and $root(3,64) = 4$ 🌿]
#only("1")[
#voiceover("Now, we simplify the cube roots. The cube root of 729 is 9, and the cube root of 64 is 4.")
]
#only("2")[
#voiceover("So, our expression simplifies to 9 over 4.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Final Answer]
#v(40pt)
#only("1-")[$(27/8)^(2/3) = 9/4$ ✅]
#v(20pt)
#only("2-")[Well done! You've mastered simplifying expressions with rational exponents. 🙌]
#only("1")[
#voiceover("Therefore, 27 over 8 raised to the power of 2 over 3 equals 9 over 4.")
]
#only("2")[
#voiceover("Well done! You've mastered simplifying expressions with rational exponents. Keep up the great work!")
]
]