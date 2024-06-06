#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Multiplying Rational Exponents]
#v(40pt)
#only("1-")[$ a^(m/n) a^(p/q) = a^((m q+n p)/(n q)) $]
#v(20pt)
#only("2-")[Example: $ 2^(1/2) 2^(1/3) = 2^((1 dot 3 + 2 dot 1)/(2 dot 3)) = 2^(5/6) $]
#only("1")[
#voiceover("To multiply expressions with rational exponents that have the same base, we use the following rule: a to the power of m over n times a to the power of p over q equals a to the power of mq plus np over nq.")
]
#only("2")[
#voiceover("For example, 2 to the power of one-half times 2 to the power of one-third equals 2 to the power of 1 times 3 plus 2 times 1, all over 2 times 3, which simplifies to 2 to the power of five-sixths.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Dividing Rational Exponents]
#v(40pt)
#only("1-")[$ a^(m/n) / a^(p/q) = a^((m q-n p)/(n q)) $]
#v(20pt)
#only("2-")[Example: $ 3^(2/3) / 3^(1/4) = 3^((2 dot 4 - 3 dot 1)/(3 dot 4)) = 3^(5/12) $]
#only("1")[
#voiceover("To divide expressions with rational exponents that have the same base, we use a similar rule: a to the power of m over n divided by a to the power of p over q equals a to the power of mq minus np over nq.")
]
#only("2")[
#voiceover("For instance, 3 to the power of two-thirds divided by 3 to the power of one-fourth equals 3 to the power of 2 times 4 minus 3 times 1, all over 3 times 4, which simplifies to 3 to the power of five-twelfths.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Intuition]
#v(40pt)
#only("1-")[🧩 Convert to a common denominator]
#v(20pt)
#only("2-")[➕ Add numerators when multiplying]
#v(20pt)
#only("3-")[➖ Subtract numerators when dividing]
#only("1")[
#voiceover("The intuition behind these rules is that we're essentially converting the rational exponents to a common denominator.")
]
#only("2")[
#voiceover("When multiplying, we add the numerators of the converted exponents.")
]
#only("3")[
#voiceover("And when dividing, we subtract the numerators of the converted exponents.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[Multiplying: $ a^(m/n) a^(p/q) = a^((m q+n p)/(n q)) $]
#v(20pt)
#only("2-")[Dividing: $ a^(m/n) / a^(p/q) = a^((m q-n p)/(n q)) $]
#v(20pt)
#only("3-")[🔑 Convert to common denominator, then ➕ or ➖ numerators]
#only("1")[
#voiceover("In summary, to multiply expressions with rational exponents that have the same base, we use the rule: a to the power of m over n times a to the power of p over q equals a to the power of mq plus np over nq.")
]
#only("2")[
#voiceover("And to divide such expressions, we use the rule: a to the power of m over n divided by a to the power of p over q equals a to the power of mq minus np over nq.")
]
#only("3")[
#voiceover("The key is to convert the rational exponents to a common denominator, then add the numerators when multiplying and subtract the numerators when dividing.")
]
]