#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Properties of Matrix Multiplication]
#v(40pt)
Which property does #text(weight: "bold")[not] hold for matrix multiplication?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is the correct answer (the property that does not hold).
#only("-1")[a) Commutative]#only("2-")[#text(fill:red)[a) Commutative]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is a property that does hold.
#only("-2")[b) Associative]#only("3-")[#text(fill:green)[b) Associative]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned green, because it is a property that does hold.
#only("-3")[c) Distributive]#only("4-")[#text(fill:green)[c) Distributive]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned green, because it is a property that does hold.
#only("-4")[d) Identity element]#only("5-")[#text(fill:green)[d) Identity element]]

#only("1")[#voiceover("Great job! You've correctly identified that the commutative property does not hold for matrix multiplication.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Commutative Property]
#v(40pt)
#only("1-")[For matrices $A$ and $B$, in general:]
#v(20pt)
#only("2-")[$A B ≠ B A$]
#v(40pt)
#only("3-")[Example: Let $A = mat(1, 2; 3, 4)$ and $B = mat(2, 0; 1, 2)$. Then:]
#v(20pt)
#only("4-")[$A B = mat(4, 4; 10, 8)$]
#v(10pt)
#only("5-")[$B A = mat(5, 4; 11, 10)$]
#v(20pt)
#only("6-")[So, $A B ≠ B A$. 🙅]

#only("1")[#voiceover("The commutative property states that the order of the operands does not matter. However, this is not the case for matrix multiplication.")]
#only("2")[#voiceover("In general, for matrices A and B, A times B is not equal to B times A.")]
#only("3")[#voiceover("Let's look at an example. Consider these two 2 by 2 matrices, A and B.")]
#only("4")[#voiceover("When we multiply A and B in this order, we get the matrix (4, 4; 10, 8).")]
#only("5")[#voiceover("But when we multiply B and A, we get a different matrix: (5, 4; 11, 10).")]
#only("6")[#voiceover("This shows that A B is not equal to B A, and thus the commutative property does not hold for matrix multiplication.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Properties that Do Hold]
#v(40pt)
#only("1-")[On the other hand, matrix multiplication is:]
#v(20pt)
#only("2-")[- Associative: $(A B) C = A (B C)$ ✅]
#v(10pt)
#only("3-")[- Distributive: $A (B + C) = A B + A C$ ✅]
#v(10pt)
#only("4-")[- Has an identity element: $I A = A I = A$ ✅]
#v(40pt)
#only("5-")[These properties make matrix algebra powerful and useful! 💪]

#only("1")[#voiceover("However, there are several important properties that do hold for matrix multiplication.")]
#only("2")[#voiceover("Matrix multiplication is associative. This means that for matrices A, B, and C, (A B) C equals A (B C).")]
#only("3")[#voiceover("It's also distributive over matrix addition. So, A (B plus C) equals A B plus A C.")]
#only("4")[#voiceover("And there exists an identity matrix I such that I A equals A I equals A for any matrix A.")]
#only("5")[#voiceover("These properties, despite the lack of commutativity, make matrix algebra a powerful and useful tool in many fields of mathematics and science.")]
]