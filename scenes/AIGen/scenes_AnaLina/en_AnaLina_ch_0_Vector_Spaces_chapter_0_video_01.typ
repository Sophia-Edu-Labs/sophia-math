#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Vector Space]
#v(40pt)
#only("1-")[- Collection of vectors 📐]
#v(20pt)
#only("2-")[- Closed under addition ➕]
#v(20pt)
#only("3-")[- Closed under scalar multiplication 🔢✖]
#v(20pt)
#only("4-")[- Satisfies certain properties 📋]
#only("1")[
#voiceover("A vector space is a collection of vectors.")
]
#only("2")[
#voiceover("These vectors can be added together, and the result is always another vector in the same space. This property is known as closure under addition.")
]
#only("3")[
#voiceover("Vectors in a vector space can also be multiplied by scalars, which are real or complex numbers. The result of this scalar multiplication is always another vector in the space. This is known as closure under scalar multiplication.")
]
#only("4")[
#voiceover("In addition to being closed under addition and scalar multiplication, the vectors in a vector space must satisfy certain properties, such as the associative and commutative properties of addition, and the distributive property of scalar multiplication over vector addition.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Examples]
#v(40pt)
#only("1-")[- $RR^n$: All $n$-dimensional real vectors]
#v(20pt)
#only("2-")[- $CC^n$: All $n$-dimensional complex vectors]
#v(20pt)
#only("3-")[- $P_n$: All polynomials of degree $<= n$]
#v(20pt)
#only("4-")[- $M_(m times n)$: All $m times n$ matrices]
#only("1")[
#voiceover("Some common examples of vector spaces include R n, which is the set of all n-dimensional vectors with real components.")
]
#only("2")[
#voiceover("Similarly, C n is the set of all n-dimensional vectors with complex components.")
]
#only("3")[
#voiceover("The set of all polynomials of degree less than or equal to n, denoted P sub n, is also a vector space.")
]
#only("4")[
#voiceover("Another example is the set of all m by n matrices, denoted M sub m by n.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Vector space: collection of vectors 📐]
#v(20pt)
#only("2-")[- Closed under addition and scalar multiplication ➕🔢✖]
#v(20pt)
#only("3-")[- Satisfies certain properties 📋]
#v(20pt)
#only("4-")[- Examples: $RR^n$, $CC^n$, $P_n$, $M_(m times n)$]
#only("1")[
#voiceover("In summary, a vector space is a collection of vectors")
]
#only("2")[
#voiceover("that is closed under the operations of addition and scalar multiplication,")
]
#only("3")[
#voiceover("and whose vectors satisfy certain properties.")
]
#only("4")[
#voiceover("Some common examples of vector spaces include R n, C n, the set of polynomials P sub n, and the set of m by n matrices.")
]
]