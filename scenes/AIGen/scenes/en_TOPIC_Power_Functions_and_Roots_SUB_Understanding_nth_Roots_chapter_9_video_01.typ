#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[n-th Roots: Key Points 🔑]
#v(40pt)
#only("1-")[- Definition: $root(n, a)$ is a value that, when raised to the power of $n$, gives $a$]
#v(20pt)
#only("2-")[- Notation: $root(n, a)$ for the n-th root of $a$]
#v(20pt)
#only("3-")[- Properties: $root(n, a b) = root(n, a) root(n, b)$, $root(n, a/b) = root(n, a) / root(n, b)$]
#v(20pt)
#only("4-")[- Simplifying: Factor the number inside the root]
#v(20pt)
#only("5-")[- Solving Equations: Raise both sides to the power of $n$]
#only("1")[
#voiceover("The n-th root of a number a, denoted by the n-th root of a, is a value that, when raised to the power of n, gives a.")
]
#only("2")[
#voiceover("We use the notation the n-th root of a to represent the n-th root of a number a.")
]
#only("3")[
#voiceover("n-th roots have important properties. The n-th root of a product a b is equal to the product of the n-th roots of a and b. Similarly, the n-th root of a quotient a over b is equal to the quotient of the n-th roots of a and b.")
]
#only("4")[
#voiceover("To simplify n-th roots, we can factor the number inside the root.")
]
#only("5")[
#voiceover("When solving equations involving n-th roots, we can raise both sides of the equation to the power of n.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[n-th Roots: More Key Points 🗝️]
#v(40pt)
#only("1-")[- Real n-th Roots: $root(n, a)$ is real if $n$ is odd or if $n$ is even and $a ≥ 0$]
#v(20pt)
#only("2-")[- Complex n-th Roots: $root(n, -a)$ is complex if $n$ is even]
#v(20pt)
#only("3-")[- Applications: Interest rates 📈, physics problems 🌍, etc.]
#only("1")[
#voiceover("The n-th root of a number a is real if n is odd or if n is even and a is greater than or equal to zero.")
]
#only("2")[
#voiceover("However, if n is even and a is negative, the n-th root of negative a is a complex number.")
]
#only("3")[
#voiceover("n-th roots have various real-world applications, such as calculating interest rates and solving physics problems.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary 📝]
#v(40pt)
#only("1-")[- n-th root: $root(n, a)$ such that $(root(n, a))^n = a$]
#v(20pt)
#only("2-")[- Properties, simplification, solving equations]
#v(20pt)
#only("3-")[- Real and complex roots, applications]
#only("1")[
#voiceover("In summary, the n-th root of a number a is a value that, when raised to the power of n, gives a.")
]
#only("2")[
#voiceover("We discussed the notation, properties, simplification, and solving equations involving n-th roots.")
]
#only("3")[
#voiceover("We also touched on real and complex n-th roots and their applications in various fields.")
]
]