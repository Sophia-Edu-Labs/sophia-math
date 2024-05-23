#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrices vs. Numbers]
#v(40pt)
#only("1-")[- Multiplication is different 🧮]
#v(20pt)
#only("2-")[- Numbers: Commutative 🔄]
#v(10pt)
#only("3-")[  $a dot b = b dot a$]
#v(20pt)
#only("4-")[- Matrices: Not Commutative ❌]
#v(10pt)
#only("5-")[  $A B ≠ B A$]
#only("1")[
#voiceover("Matrices and numbers differ in several ways, especially when it comes to multiplication.")
]
#only("2")[
#voiceover("For numbers, multiplication is commutative. This means that the order doesn't matter.")
]
#only("3")[
#voiceover("For example, a times b equals b times a.")
]
#only("4")[
#voiceover("However, for matrices, multiplication is not commutative. The order does matter.")
]
#only("5")[
#voiceover("In general, matrix A times matrix B is not equal to matrix B times matrix A.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[
Let $A = mat(1, 2; 3, 4)$ and $B = mat(5, 6; 7, 8)$
]
#v(20pt)
#only("2-")[
$A B = mat(19, 22; 43, 50)$
]
#v(20pt)
#only("3-")[
$B A = mat(23, 34; 31, 46)$
]
#v(20pt)
#only("4-")[
$A B ≠ B A$ 🙅‍♂️
]
#only("1")[
#voiceover("Let's look at an example. Consider two 2 by 2 matrices, A and B.")
]
#only("2")[
#voiceover("When we multiply A times B, we get a new matrix with elements 19, 22, 43, and 50.")
]
#only("3")[
#voiceover("However, when we multiply B times A, we get a different matrix with elements 23, 34, 31, and 46.")
]
#only("4")[
#voiceover("Clearly, A B is not equal to B A, demonstrating that matrix multiplication is not commutative.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Other Matrix Properties]
#v(40pt)
#only("1-")[- Associative 🤝]
#v(10pt)
#only("2-")[  $(A B) C = A (B C)$]
#v(20pt)
#only("3-")[- Distributive 🍕]
#v(10pt)
#only("4-")[  $A (B + C) = A B + A C$]
#only("1")[
#voiceover("Despite not being commutative, matrix multiplication does have some other important properties.")
]
#only("2")[
#voiceover("It is associative, meaning that A times B, all times C, equals A times, B times C.")
]
#only("3")[
#voiceover("It is also distributive over matrix addition.")
]
#only("4")[
#voiceover("This means that A times the sum of B and C equals A B plus A C.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Matrices ≠ Numbers 🔢]
#v(20pt)
#only("2-")[- Matrix multiplication: Not commutative ❌]
#v(20pt)
#only("3-")[- But: Associative & Distributive ✅]
#only("1")[
#voiceover("In summary, matrices behave differently from numbers, especially when it comes to multiplication.")
]
#only("2")[
#voiceover("Unlike number multiplication, matrix multiplication is not commutative. The order matters.")
]
#only("3")[
#voiceover("However, matrix multiplication is associative and distributive, just like number multiplication.")
]
]