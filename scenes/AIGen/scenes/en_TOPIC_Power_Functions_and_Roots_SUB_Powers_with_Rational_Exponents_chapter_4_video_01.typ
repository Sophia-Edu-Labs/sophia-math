#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Rational Exponents with Negative Bases]
#v(40pt)
#only("1-")[- Recall: $a^(m/n) = root(n, a^m)$]
#only("1")[
#voiceover("Let's recall that a rational exponent of the form m over n is equivalent to taking the nth root of a to the power of m.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Even Denominator]
#v(40pt)
#only("1-")[- Consider: $(-8)^(1/2)$]
#v(20pt)
#only("2-")[$ (-8)^(1/2) = root(2, (-8)^1) = root(2, -8)$]
#v(20pt)
#only("3-")[$ root(2, -8) = sqrt(-8) = 2i sqrt(2)$]
#only("1")[
#voiceover("Now, let's consider a negative base raised to a rational exponent with an even denominator, like negative 8 to the power of one-half.")
]
#only("2")[
#voiceover("This is equivalent to taking the square root of negative 8, since the denominator is 2 and the numerator is 1.")
]
#only("3")[
#voiceover("The square root of negative 8 is a complex number, specifically 2i times the square root of 2, where i is the imaginary unit.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Odd Denominator]
#v(40pt)
#only("1-")[- Consider: $(-8)^(1/3)$]
#v(20pt)
#only("2-")[$ (-8)^(1/3) = root(3, (-8)^1) = root(3, -8)$]
#v(20pt)
#only("3-")[$ root(3, -8) = -2$]
#only("1")[
#voiceover("In contrast, if the denominator is odd, like in negative 8 to the power of one-third...")
]
#only("2")[
#voiceover("...this is equivalent to taking the cube root of negative 8.")
]
#only("3")[
#voiceover("The cube root of negative 8 is a real number, specifically negative 2.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Rational exponents with negative bases 📉]
#v(20pt)
#only("2-")[- Even denominator ➡ Complex result 🌀]
#v(20pt)
#only("3-")[- Odd denominator ➡ Real result 📏]
#only("1")[
#voiceover("In summary, when dealing with rational exponents with negative bases...")
]
#only("2")[
#voiceover("...if the denominator of the exponent is even, the result can be a complex number.")
]
#only("3")[
#voiceover("However, if the denominator is odd, the result will always be a real number.")
]
]