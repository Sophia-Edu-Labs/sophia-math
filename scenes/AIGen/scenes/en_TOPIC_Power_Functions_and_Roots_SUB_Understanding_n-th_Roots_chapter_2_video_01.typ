#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[n-th Root of a Product]
#v(40pt)
#only("1-")[$ root(n, a dot b) = root(n, a) dot root(n, b) $]
#v(20pt)
#only("2-")[Example: $ root(3, 8 dot 27) = root(3, 8) dot root(3, 27) = 2 dot 3 = 6 $]
#only("1")[
#voiceover("The n-th root of a product is equal to the product of the n-th roots. In mathematical notation, this is written as the n-th root of a times b equals the n-th root of a times the n-th root of b.")
]
#only("2")[
#voiceover("For example, the cube root of 8 times 27 is equal to the cube root of 8 times the cube root of 27, which is 2 times 3, equaling 6.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[n-th Root of a Quotient]
#v(40pt)
#only("1-")[$ root(n, a/b) = root(n, a) / root(n, b) $]
#v(20pt)
#only("2-")[Example: $ root(4, 16/81) = root(4, 16) / root(4, 81) = 2/3 $]
#only("1")[
#voiceover("Similarly, the n-th root of a quotient is equal to the quotient of the n-th roots. This means the n-th root of a divided by b equals the n-th root of a divided by the n-th root of b.")
]
#only("2")[
#voiceover("For instance, the fourth root of 16 divided by 81 is equal to the fourth root of 16 divided by the fourth root of 81, which is 2 divided by 3.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Why This Works 🤔]
#v(40pt)
#only("1-")[Remember: $ root(n, a) = x $ means $ x^n = a $]
#v(20pt)
#only("2-")[For products: $ (root(n, a) dot root(n, b))^n = root(n, a)^n dot root(n, b)^n = a dot b $]
#v(20pt)
#only("3-")[For quotients: $ (root(n, a) / root(n, b))^n = root(n, a)^n / root(n, b)^n = a/b $]
#only("1")[
#voiceover("Why do these properties work? Remember, the n-th root of a is defined as the number x such that x to the power of n equals a.")
]
#only("2")[
#voiceover("For products, if we take the n-th root of a times the n-th root of b, and raise this to the power of n, we get a times b, just as we would if we took the n-th root of the product a times b.")
]
#only("3")[
#voiceover("Similarly for quotients, if we take the n-th root of a divided by the n-th root of b, and raise this to the power of n, we get a divided by b, just as we would if we took the n-th root of the quotient a divided by b.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[$ root(n, a dot b) = root(n, a) dot root(n, b) $ 🍎🍌]
#v(20pt)
#only("2-")[$ root(n, a/b) = root(n, a) / root(n, b) $ 🍕➗]
#v(20pt)
#only("3-")[These properties follow from the definition of n-th roots 📏]
#only("1")[
#voiceover("In summary, the n-th root of a product is the product of the n-th roots.")
]
#only("2")[
#voiceover("And the n-th root of a quotient is the quotient of the n-th roots.")
]
#only("3")[
#voiceover("These properties follow directly from the definition of n-th roots. Understanding these properties can greatly simplify working with n-th roots.")
]
]