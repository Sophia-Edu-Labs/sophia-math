#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Notation]
#v(40pt)
#only("1-")[- $root(n, a)$: n-th root of a]
#only("1")[
#voiceover("Not quite. Let's review the correct notation for the 6th root of 64.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Solution]
#v(40pt)
#only("1-")[- $root(6, 64)$]
#only("1")[
#voiceover("So, the 6th root of 64 is written as root of 6, 64. This means a value that, when raised to the power of 6, gives 64.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Recap]
#v(40pt)
#only("1-")[- n-th root notation: $root(n, a)$ 📝]
#v(20pt)
#only("2-")[- Example: $root(6, 64)$ ✅]
#only("1")[
#voiceover("To recap, the notation for n-th roots is root of n, a, where n is the root and a is the number.")
]
#only("2")[
#voiceover("In this case, we wrote the 6th root of 64 as root of 6, 64. Well done!")
]
]