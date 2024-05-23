#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Let's recap the key differences between matrices and numbers.")
]
#text(size: 30pt, weight: "bold")[Matrices vs. Numbers]
// The title "Matrices vs. Numbers" is shown on this slide
#v(40pt)
#only("2")[
#voiceover("While matrices and numbers share some properties, they differ in certain operations, particularly multiplication.")
]
#only("2-")[
- Differences in multiplication 🧮
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Commutativity]
#v(40pt)
#only("1")[
#voiceover("Unlike numbers, matrix multiplication is not commutative. This means that the order of the matrices matters when multiplying them.")
]
#only("1-")[
- Numbers: $a b = b a$
- Matrices: $A B ≠ B A$
]
#v(20pt)
#only("2")[
#voiceover("For example, if A is a 2 by 3 matrix and B is a 3 by 2 matrix, then A B is defined, but B A is not.")
]
#only("2-")[
- Example: $A_(2×3) B_(3×2)$ is defined, but $B_(3×2) A_(2×3)$ is not.
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Associativity]
#v(40pt)
#only("1")[
#voiceover("However, matrix multiplication is associative, just like multiplication of numbers. This means that when multiplying three or more matrices, the grouping doesn't affect the result.")
]
#only("1-")[
- Numbers: $(a b) c = a (b c)$
- Matrices: $(A B) C = A (B C)$
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Distributivity]
#v(40pt)
#only("1")[
#voiceover("Matrix multiplication is also distributive over matrix addition, similar to how multiplication of numbers is distributive over addition of numbers.")
]
#only("1-")[
- Numbers: $a (b + c) = a b + a c$
- Matrices: $A (B + C) = A B + A C$
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1")[
#voiceover("In summary, while matrices and numbers share the properties of associativity and distributivity in multiplication, they differ in commutativity.")
]
#only("1-")[
- Matrices are not commutative 🚫
- Matrices are associative ✅
- Matrices are distributive ✅
]
]