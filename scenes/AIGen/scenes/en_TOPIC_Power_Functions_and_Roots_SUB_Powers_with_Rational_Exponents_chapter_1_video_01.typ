#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Simplifying Rational Exponents]
#v(40pt)
#only("1-")[- $a^(m/n) = root(n, a^m)$]
#only("1")[#voiceover("To simplify expressions with rational exponents, we use the rule that a to the power of m over n equals the nth root of a to the power of m.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example 1]
#v(40pt)
#only("1-")[- Simplify $16^(1/4)$]
#v(20pt)
#only("2-")[$ 16^(1/4) = root(4, 16^1) $]
#v(20pt)
#only("3-")[$ root(4, 16) = 2 $]
#only("1")[#voiceover("Let's look at an example. We want to simplify 16 to the power of one-fourth.")]
#only("2")[#voiceover("We can rewrite this as the fourth root of 16 to the power of 1.")]
#only("3")[#voiceover("The fourth root of 16 is equal to 2.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example 2]
#v(40pt)
#only("1-")[- Convert $root(3, 8)$ to exponential form]
#v(20pt)
#only("2-")[$ root(3, 8) = 8^(1/3) $]
#v(20pt)
#only("3-")[$ 8^(1/3) = 2 $]
#only("1")[#voiceover("Now let's convert the cube root of 8 to exponential form.")]
#only("2")[#voiceover("The cube root of 8 can be written as 8 to the power of one-third.")]
#only("3")[#voiceover("8 to the power of one-third is equal to 2.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- $a^(m/n) = root(n, a^m)$ 🔄]
#v(20pt)
#only("2-")[- Simplify by converting between forms 🧮]
#only("1")[#voiceover("In summary, we can simplify expressions with rational exponents by converting them to radical form using the rule that a to the power of m over n equals the nth root of a to the power of m.")]
#only("2")[#voiceover("We can also convert from radical form to exponential form. By converting between these forms, we can simplify expressions and solve problems involving rational exponents.")]
]