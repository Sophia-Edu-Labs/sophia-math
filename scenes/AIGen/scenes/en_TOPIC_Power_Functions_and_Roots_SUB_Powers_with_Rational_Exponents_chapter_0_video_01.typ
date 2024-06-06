#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Rational Exponents]
#v(40pt)
#only("1-")[- Another way to represent roots 🌳]
#v(20pt)
#only("2-")[- General form: $a^(m/n) = root(n, a^m)$]
#only("1")[
#voiceover("Rational exponents provide another way to represent roots.")
]
#only("2")[
#voiceover("The general form of a rational exponent is a to the power of m over n, which is equal to the nth root of a to the power of m.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example 1]
#v(40pt)
#only("1-")[$ a^(1/2) = root(2, a) = sqrt(a) $]
#only("1")[
#voiceover("For example, a to the power of one-half is equal to the square root of a.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example 2]
#v(40pt)
#only("1-")[$ 8^(1/3) = root(3, 8) = 2 $]
#only("1")[
#voiceover("Similarly, 8 to the power of one-third is equal to the cube root of 8, which is 2.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example 3]
#v(40pt)
#only("1-")[$ 16^(3/4) = root(4, 16^3) = root(4, 4096) = 8 $]
#only("1")[
#voiceover("A more complex example: 16 to the power of three-fourths is equal to the fourth root of 16 cubed, which is the fourth root of 4096, which equals 8.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Rational exponents: $a^(m/n) = root(n, a^m)$ 📝]
#v(20pt)
#only("2-")[- Useful for simplifying expressions 🧮]
#v(20pt)
#only("3-")[- Remember the general form! 🎯]
#only("1")[
#voiceover("In summary, rational exponents provide a concise way to represent roots.")
]
#only("2")[
#voiceover("They are useful for simplifying expressions that involve both exponents and roots.")
]
#only("3")[
#voiceover("Remember, a to the power of m over n is equal to the nth root of a to the power of m.")
]
]