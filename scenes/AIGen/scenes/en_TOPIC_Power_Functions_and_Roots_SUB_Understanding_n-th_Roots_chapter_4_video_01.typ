#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Rationalizing n-th Roots]
#v(40pt)
#only("1-")[- Goal: Eliminate roots in denominator 🎯]
#v(20pt)
#only("2-")[- Method: Multiply by appropriate value 🧮]
#only("1")[
#voiceover("When we have an n-th root in the denominator of a fraction, we often want to rationalize it. This means we want to eliminate the root from the denominator.")
]
#only("2")[
#voiceover("To do this, we multiply both the numerator and denominator by an appropriate value.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example: $1/root(3,2)$]
#v(40pt)
#only("1-")[- Multiply by $root(3,2)/root(3,2)$]
#v(20pt)
#only("2-")[$ (1 dot root(3,2))/(root(3,2) dot root(3,2)) $]
#v(20pt)
#only("3-")[$ = root(3,2)/2 $]
#only("1")[
#voiceover("Let's look at an example. Suppose we have the fraction 1 over the cube root of 2.")
]
#only("2")[
#voiceover("We multiply both the numerator and denominator by the cube root of 2 over the cube root of 2. This is equivalent to multiplying by 1, so it doesn't change the value of the fraction.")
]
#only("3")[
#voiceover("In the denominator, the cube root of 2 multiplied by the cube root of 2 equals 2. So our final rationalized form is the cube root of 2 over 2.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[General Rule]
#v(40pt)
#only("1-")[$ 1/root(n,a) = (root(n,a)^(n-1))/a $]
#v(20pt)
#only("2-")[- Multiply by $root(n,a)^(n-1)/root(n,a)^(n-1)$]
#only("1")[
#voiceover("In general, to rationalize 1 over the n-th root of a, we multiply by the n-th root of a to the power of n minus 1, over the n-th root of a to the power of n minus 1.")
]
#only("2")[
#voiceover("This works because in the denominator, the n-th root of a multiplied by the n-th root of a to the power of n minus 1 equals a.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Rationalizing eliminates roots in denominator 🚫√]
#v(20pt)
#only("2-")[- Multiply numerator and denominator by appropriate value 🔢]
#v(20pt)
#only("3-")[- For $1/root(n,a)$, multiply by $root(n,a)^(n-1)/root(n,a)^(n-1)$ 📏]
#only("1")[
#voiceover("In summary, rationalizing is a technique to eliminate roots in the denominator of a fraction.")
]
#only("2")[
#voiceover("We do this by multiplying both the numerator and denominator by an appropriate value.")
]
#only("3")[
#voiceover("Specifically, for a fraction of the form 1 over the n-th root of a, we multiply by the n-th root of a to the power of n minus 1, over the n-th root of a to the power of n minus 1.")
]
]