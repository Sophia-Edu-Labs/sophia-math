#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Vector Space Properties]
#v(40pt)
Which of the following is #text(weight: "bold")[not necessarily] a property of a vector space?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct.
#only("-1")[a) Associativity of addition]#only("2-")[#text(fill:green)[a) Associativity of addition]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) Commutativity of multiplication]#only("3-")[#text(fill:red)[b) Commutativity of multiplication]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned green, because it is correct.
#only("-3")[c) Distributivity of scalar multiplication over vector addition]#only("4-")[#text(fill:green)[c) Distributivity of scalar multiplication over vector addition]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned green, because it is correct.
#only("-4")[d) Existence of additive inverses]#only("5-")[#text(fill:green)[d) Existence of additive inverses]]
#only("1")[#voiceover("Great job! That's the correct answer.")]
#only("2")[#voiceover("Associativity of addition is indeed a necessary property of vector spaces. This means that for any vectors u, v, and w in a vector space V, we have (u + v) + w = u + (v + w).")]
#only("3")[#voiceover("However, commutativity of multiplication is not necessarily a property of vector spaces. While scalar multiplication is distributive and associative, it doesn't need to be commutative. That is, for a scalar c and a vector v, cv = vc is not required.")]
#only("4")[#voiceover("Distributivity of scalar multiplication over vector addition is another necessary property. For any scalar c and vectors u and v, we must have c(u + v) = cu + cv.")]
#only("5")[#voiceover("Lastly, the existence of additive inverses is also a must for vector spaces. For every vector v in V, there exists a vector -v such that v + (-v) = 0, where 0 is the zero vector.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Properties of Vector Spaces]
#v(40pt)
#only("1-")[A vector space $(V, +, ⋅)$ over a field $F$ must satisfy these axioms:]
#v(20pt)
#only("2-")[1. #text(weight: "bold")[Associativity of Addition]: $(u + v) + w = u + (v + w)$, $∀u, v, w ∈ V$]
#v(10pt)
#only("3-")[2. #text(weight: "bold")[Commutativity of Addition]: $u + v = v + u$, $∀u, v ∈ V$]
#v(10pt)
#only("4-")[3. #text(weight: "bold")[Additive Identity]: $∃ 0 ∈ V$ such that $v + 0 = v$, $∀v ∈ V$]
#v(10pt)
#only("5-")[4. #text(weight: "bold")[Additive Inverses]: $∀v ∈ V$, $∃(-v) ∈ V$ such that $v + (-v) = 0$]
#v(10pt)
#only("6-")[5. #text(weight: "bold")[Distributivity of Scalar Multiplication over Field Addition]: $c ⋅ (u + v) = c ⋅ u + c ⋅ v$, $∀c ∈ F$, $∀u, v ∈ V$]
#v(20pt)
#only("1")[#voiceover("Let's review the properties that a vector space must satisfy.")]
#only("2")[#voiceover("First, we have associativity of addition. For any vectors u, v, and w in V, (u + v) + w must equal u + (v + w).")]
#only("3")[#voiceover("Next is commutativity of addition. For any vectors u and v in V, u + v must equal v + u.")]
#only("4")[#voiceover("There must also be an additive identity, often denoted as 0. For any vector v in V, v + 0 must equal v.")]
#only("5")[#voiceover("For every vector v in V, there must exist an additive inverse, denoted as -v, such that v + (-v) equals the zero vector.")]
#only("6")[#voiceover("Scalar multiplication must be distributive over field addition. For any scalar c and vectors u and v, c times (u + v) must equal cu + cv.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Properties of Vector Spaces (cont.)]
#v(40pt)
#only("1-")[A vector space $(V, +, ⋅)$ over a field $F$ must satisfy these axioms (cont.):]
#v(20pt)
#only("2-")[1. #text(weight: "bold")[Distributivity of Scalar Multiplication over Vector Addition]: $(a + b) ⋅ v = a ⋅ v + b ⋅ v$, $∀a, b ∈ F$, $∀v ∈ V$]
#v(10pt)
#only("3-")[2. #text(weight: "bold")[Compatibility of Scalar Multiplication with Field Multiplication]: $a ⋅ (b ⋅ v) = (a ⋅ b) ⋅ v$, $∀a, b ∈ F$, $∀v ∈ V$]

#only("1")[#voiceover("Scalar multiplication must also distribute over vector addition. For any scalars a and b and vector v, (a + b) times v must equal av + bv.")]
#only("2")[#voiceover("Scalar multiplication must be compatible with field multiplication. For any scalars a and b and vector v, a times (b times v) must equal (a times b) times v.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Properties of Vector Spaces (cont.)]
#v(40pt)
#only("1-")[A vector space $(V, +, ⋅)$ over a field $F$ must satisfy these axioms (cont.):]
#v(20pt)
#only("2-")[1. #text(weight: "bold")[Scalar Multiplicative Identity]: $1 ⋅ v = v$, $∀v ∈ V$, where $1$ is the multiplicative identity in $F$]
#v(20pt)
#only("3-")[2. #text(weight: "bold")[Note: Commutativity of scalar multiplication, i.e., $a ⋅ v = v ⋅ a$, is #text(weight: "bold")[not] required!]

#only("1")[#voiceover("Lastly, multiplying a vector by the scalar 1 must result in the same vector.")]
#only("2")[#voiceover("Importantly, commutativity of scalar multiplication is not required. That is, av does not necessarily equal va for a scalar a and vector v.")]
]


No corrections are needed.]