#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrix Multiplication]
#v(40pt)
Which of the following is true about matrix multiplication?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false. 
#only("-1")[a) It is commutative]#only("2-")[#text(fill:red)[a) It is commutative]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) It is associative]#only("3-")[#text(fill:green)[b) It is associative]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned green, because it is correct.
#only("-3")[c) It is distributive]#only("4-")[#text(fill:green)[c) It is distributive]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned green, because it is correct.
#only("-4")[d) Both b and c]#only("5-")[#text(fill:green)[d) Both b and c]]
#only("1")[#voiceover("That's right, great job!")]
#only("2")[#voiceover("Option a) is incorrect. Matrix multiplication is not commutative, meaning A B is not always equal to B A.")]
#only("3")[#voiceover("Option b) is correct. Matrix multiplication is associative, meaning (A B) C = A (B C).")]
#only("4")[#voiceover("Option c) is also correct. Matrix multiplication is distributive, meaning A (B + C) = A B + A C.")]
#only("5")[#voiceover("Therefore, the correct answer is d) Both b and c. Matrix multiplication is associative and distributive, but not commutative.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Properties of Matrix Multiplication]
#v(40pt)
#only("1-")[Let's look at each property in detail:]
#v(20pt)
#only("2-")[1. #text(weight: "bold", fill:red)[Commutative ❌]]
#v(10pt)
#only("3-")[   $A B ≠ B A$ in general]
#v(20pt)
#only("4-")[2. #text(weight: "bold", fill:green)[Associative ✅]]
#v(10pt)
#only("5-")[   $(A B) C = A (B C)$]
#v(20pt)
#only("6-")[3. #text(weight: "bold", fill:green)[Distributive ✅]]
#v(10pt)
#only("7-")[   $A (B + C) = A B + A C$]
#only("8-")[   $(A + B) C = A C + B C$]

#only("1")[#voiceover("Let's look at each property in more detail to understand why this is the case.")]
#only("2")[#voiceover("First, matrix multiplication is not commutative.")]
#only("3")[#voiceover("This means that in general, A times B is not equal to B times A. The order matters.")]
#only("4")[#voiceover("However, matrix multiplication is associative.")]
#only("5")[#voiceover("This means that when multiplying three matrices, the grouping doesn't matter. A times B, all times C, is the same as A times, B times C.")]
#only("6")[#voiceover("Matrix multiplication is also distributive.")]
#only("7")[#voiceover("This means that A times the sum of B and C, is equal to A times B plus A times C.")]
#only("8")[#voiceover("Similarly, the sum of A and B, all times C, is equal to A times C plus B times C.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[Consider these matrices:]
#v(20pt)
#only("2-")[
$A = mat(1, 2; 3, 4)$
$B = mat(5, 6; 7, 8)$
]
#v(20pt)
#only("3-")[#text(weight: "bold", fill:red)[Commutative ❌]]
#v(10pt)
#only("4-")[
$A B = mat(19, 22; 43, 50)$
$B A = mat(23, 34; 31, 46)$
]
#only("5-")[So, $A B ≠ B A$]
#v(20pt)
#only("6-")[#text(weight: "bold", fill:green)[Associative ✅]]
#v(10pt)
#only("7-")[
$C = mat(9, 10; 11, 12)$
$(A B) C = A (B C) = mat(669, 770; 1539, 1770)$
]
#v(20pt)
#only("8-")[#text(weight: "bold", fill:green)[Distributive ✅]]
#v(10pt)
#only("9-")[
$A (B + C) = mat(124, 142; 284, 326)$
$A B + A C = mat(124, 142; 284, 326)$
]

#only("1")[#voiceover("Let's illustrate these properties with an example. Consider these matrices A and B.")]
#only("2")[#voiceover("A is the 2 by 2 matrix with elements 1, 2, 3, and 4. B is the 2 by 2 matrix with elements 5, 6, 7, and 8.")]
#only("3")[#voiceover("To show that multiplication is not commutative, let's compute A times B and B times A.")]
#only("4")[#voiceover("A times B is the matrix with elements 19, 22, 43, and 50. B times A is the matrix with elements 23, 34, 31, and 46.")]
#only("5")[#voiceover("As you can see, A times B is not equal to B times A, proving that matrix multiplication is not commutative.")]
#only("6")[#voiceover("To show associativity, let's introduce a third matrix C.")]
#only("7")[#voiceover("C is the 2 by 2 matrix with elements 9, 10, 11, and 12. Now, A times B, all times C, is equal to A times, B times C. Both result in the same matrix with elements 669, 770, 1539, and 1770.")]
#only("8")[#voiceover("Finally, to show the distributive property, let's compute A times the sum of B and C, and compare it to A times B plus A times C.")]
#only("9")[#voiceover("Both expressions result in the same matrix with elements 124, 142, 284, and 326, proving that matrix multiplication is indeed distributive.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[📜 Matrix multiplication is...]
#v(20pt)
#only("2-")[❌ Not commutative: $A B ≠ B A$]
#v(20pt)
#only("3-")[✅ Associative: $(A B) C = A (B C)$]
#v(20pt)
#only("4-")[✅ Distributive: $A (B + C) = A B + A C$]
#v(20pt)
#only("5-")[👍 You got it right! Great job!]

#only("1")[#voiceover("To summarize, matrix multiplication is...")]
#only("2")[#voiceover("Not commutative, meaning A times B is not always equal to B times A.")]
#only("3")[#voiceover("Associative, meaning the grouping of matrices doesn't matter when multiplying three or more matrices.")]
#only("4")[#voiceover("And distributive, meaning multiplication distributes over addition of matrices.")]
#only("5")[#voiceover("Excellent work on getting this question right! You've demonstrated a solid understanding of the properties of matrix multiplication.")]
]