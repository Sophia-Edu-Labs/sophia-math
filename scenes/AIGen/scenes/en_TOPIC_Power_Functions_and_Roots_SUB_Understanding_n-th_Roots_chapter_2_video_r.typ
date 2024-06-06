#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Properties of n-th Roots 🌟]
#v(40pt)
#only("1-")[- Product Rule: $root(n, a b) = root(n, a) root(n, b)$]
#v(20pt)
#only("2-")[- Quotient Rule: $root(n, a/b) = root(n, a) / root(n, b)$]
#only("1")[
#voiceover("Let's quickly recap the important properties of n-th roots. First, we have the product rule: The n-th root of a product is equal to the product of the n-th roots.")
]
#only("2")[
#voiceover("Second, we have the quotient rule: The n-th root of a quotient is equal to the quotient of the n-th roots.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example 📝]
#v(40pt)
#only("1-")[Consider $root(3, 8 8 27)$]
#v(20pt)
#only("2-")[Using the product rule:]
#v(10pt)
#only("2-")[$root(3, 8 8 27) = root(3, 8) root(3, 8) root(3, 27)$]
#v(10pt)
#only("3-")[$= 2 2 3 = 6$]
#only("1")[
#voiceover("Let's look at an example. Consider the cube root of the product 8 times 8 times 27.")
]
#only("2")[
#voiceover("Using the product rule, we can rewrite this as the product of the cube roots of each factor.")
]
#only("3")[
#voiceover("The cube root of 8 is 2, and the cube root of 27 is 3. So, the result is 2 times 2 times 3, which equals 6.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Importance 🎯]
#v(40pt)
#only("1-")[- Simplify complex expressions]
#v(20pt)
#only("2-")[- Solve equations involving n-th roots]
#v(20pt)
#only("3-")[- Understand the behavior of n-th root functions]
#only("1")[
#voiceover("These properties are important because they allow us to simplify complex expressions involving n-th roots.")
]
#only("2")[
#voiceover("They also help us solve equations that contain n-th roots.")
]
#only("3")[
#voiceover("Moreover, understanding these properties gives us insight into the behavior of functions involving n-th roots.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Recap 🔍]
#v(40pt)
#only("1-")[- Product Rule: $root(n, a b) = root(n, a) root(n, b)$ 🍎🍌]
#v(20pt)
#only("2-")[- Quotient Rule: $root(n, a/b) = root(n, a) / root(n, b)$ 🍕🍰]
#v(20pt)
#only("3-")[- Key to simplifying and solving n-th root problems 🔑]
#only("1")[
#voiceover("In summary, remember the product rule: The n-th root of a product equals the product of the n-th roots.")
]
#only("2")[
#voiceover("And don't forget the quotient rule: The n-th root of a quotient equals the quotient of the n-th roots.")
]
#only("3")[
#voiceover("These properties are your key tools for simplifying and solving problems involving n-th roots.")
]
]