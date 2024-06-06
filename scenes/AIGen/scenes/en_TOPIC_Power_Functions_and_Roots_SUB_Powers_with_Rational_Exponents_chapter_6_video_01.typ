#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Power Rule for Rational Exponents]
#v(40pt)
#only("1-")[$ (a^(m/n))^p = a^((m p)/n) $]
#only("1")[
#voiceover("The power rule for rational exponents states that a to the power of m over n, raised to the power of p, equals a to the power of mp over n.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[$ (2^(3/4))^2 = 2^((3 dot 2)/4) = 2^(6/4) = 2^(3/2) = 2 sqrt(2) $]
#only("1")[
#voiceover("Let's look at an example. Consider 2 to the power of 3/4, raised to the power of 2. According to the power rule, this equals 2 to the power of 3 times 2, over 4. Simplifying, we get 2 to the power of 6/4, which is 2 to the power of 3/2. This can be written as 2 times the square root of 2.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Explanation]
#v(40pt)
#only("1-")[- Multiplying exponents: $(a^m)^n = a^(m n)$ 🧮]
#v(20pt)
#only("2-")[- Rational exponents: $a^(m/n) = root(n, a^m)$ ⚖]
#only("1")[
#voiceover("The power rule for rational exponents is based on two key concepts. First, when multiplying exponents with the same base, we add the exponents. For example, a to the power of m, raised to the power of n, equals a to the power of mn.")
]
#only("2")[
#voiceover("Second, a rational exponent represents a root. Specifically, a to the power of m over n equals the nth root of a to the power of m.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Proof]
#v(40pt)
#only("1-")[$ (a^(m/n))^p = (root(n, a^m))^p $]
#v(20pt)
#only("2-")[$ = root(n, a^m) dot root(n, a^m) dot ... dot root(n, a^m) $ #text(fill: gray)[(p times)]]
#v(20pt)
#only("3-")[$ = root(n, a^(m p)) $]
#v(20pt)
#only("4-")[$ = a^((m p)/n) $]
#only("1")[
#voiceover("Let's prove this rule. We start by expressing a to the power of m over n, raised to the power of p, using the definition of rational exponents.")
]
#only("2")[
#voiceover("This equals the nth root of a to the power of m, multiplied by itself p times.")
]
#only("3")[
#voiceover("Using the property of roots, this simplifies to the nth root of a to the power of mp.")
]
#only("4")[
#voiceover("Finally, we can rewrite this using the definition of rational exponents, giving us a to the power of mp over n, which is the power rule for rational exponents.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Power rule for rational exponents: $(a^(m/n))^p = a^((m p)/n)$ 📏]
#v(20pt)
#only("2-")[- Based on multiplying exponents and the definition of rational exponents 🎓]
#only("1")[
#voiceover("In summary, the power rule for rational exponents states that a to the power of m over n, raised to the power of p, equals a to the power of mp over n.")
]
#only("2")[
#voiceover("This rule is based on the properties of multiplying exponents and the definition of rational exponents as roots.")
]
]