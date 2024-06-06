#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Fractional Bases with Rational Exponents]
#v(40pt)
#only("1-")[- Apply the exponent to both numerator and denominator 🔢]
#v(20pt)
#only("2-")[- Example: $(a/b)^(m/n) = (a^(m/n))/(b^(m/n))$]
#only("1")[
#voiceover("When dealing with rational exponents and fractional bases, we apply the exponent to both the numerator and the denominator.")
]
#only("2")[
#voiceover("For example, if we have a fraction a over b raised to the power of m over n, it's equal to a to the power of m over n, divided by b to the power of m over n.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Steps to Simplify]
#v(40pt)
#only("1-")[1️⃣ Apply the exponent to the numerator]
#v(20pt)
#only("2-")[2️⃣ Apply the exponent to the denominator]
#v(20pt)
#only("3-")[3️⃣ Simplify the resulting expression]
#only("1")[
#voiceover("To simplify such an expression, we first apply the exponent to the numerator.")
]
#only("2")[
#voiceover("Then, we apply the same exponent to the denominator.")
]
#only("3")[
#voiceover("Finally, we simplify the resulting expression if possible.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example: Simplify $(4/9)^(1/2)$]
#v(40pt)
#only("1-")[1️⃣ Apply exponent to numerator: $4^(1/2) = 2$]
#v(20pt)
#only("2-")[2️⃣ Apply exponent to denominator: $9^(1/2) = 3$]
#v(20pt)
#only("3-")[3️⃣ Simplify: $(4/9)^(1/2) = 2/3$]
#only("1")[
#voiceover("Let's look at an example. To simplify 4 over 9 raised to the power of one-half, we first apply the exponent to the numerator. 4 to the power of one-half equals 2.")
]
#only("2")[
#voiceover("Next, we apply the exponent to the denominator. 9 to the power of one-half equals 3.")
]
#only("3")[
#voiceover("So, 4 over 9 raised to the power of one-half simplifies to 2 over 3.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Fractional bases with rational exponents: $(a/b)^(m/n)$]
#v(20pt)
#only("2-")[- Apply exponent to both numerator and denominator]
#v(20pt)
#only("3-")[- Simplify the resulting expression]
#only("1")[
#voiceover("In summary, when we have a fractional base raised to a rational exponent, like a over b to the power of m over n,")
]
#only("2")[
#voiceover("we apply the exponent to both the numerator and the denominator,")
]
#only("3")[
#voiceover("and then simplify the resulting expression if possible.")
]
]