#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Upper Triangular Matrix]
#v(40pt)
Which of the following is an upper triangular matrix?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false.
#only("-1")[a) $mat(1, 2; 3, 4)$]#only("2-")[#text(fill:red)[a) $mat(1, 2; 3, 4)$]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) $mat(1, 0; 0, 1)$]#only("3-")[#text(fill:red)[b) $mat(1, 0; 0, 1)$]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned green, because it is correct.
#only("-3")[c) $mat(1, 2; 0, 3)$]#only("4-")[#text(fill:green)[c) $mat(1, 2; 0, 3)$]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) $mat(0, 1; 1, 0)$]#only("5-")[#text(fill:red)[d) $mat(0, 1; 1, 0)$]]

#only("1")[#voiceover("Incorrect answer. Let's review the correct solution.")]
#only("2")[#voiceover("Option a) is not an upper triangular matrix because it has a non-zero element below the main diagonal.")]
#only("3")[#voiceover("Option b) is a diagonal matrix, not an upper triangular matrix. All elements above and below the main diagonal are zero.")]
#only("4")[#voiceover("Option c) is indeed an upper triangular matrix. All elements below the main diagonal are zero, while elements on and above the diagonal can be non-zero.")]
#only("5")[#voiceover("Finally, option d) is not an upper triangular matrix. It has non-zero elements both above and below the main diagonal.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
An upper triangular matrix has the following properties:
#v(20pt)
#only("1-")[1️⃣ All elements below the main diagonal are zero]
#v(10pt)
#only("2-")[2️⃣ Elements on the main diagonal can be zero or non-zero]
#v(10pt)
#only("3-")[3️⃣ Elements above the main diagonal can be zero or non-zero]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
Let's check each matrix:
#v(20pt)
#only("1-")[1️⃣ $mat(1, 2; 3, 4)$: ❌ Non-zero element below diagonal]
#v(10pt)
#only("2-")[2️⃣ $mat(1, 0; 0, 1)$: ❌ All elements above and below diagonal are zero]
#v(10pt)
#only("3-")[3️⃣ $mat(1, 2; 0, 3)$: ✅ All elements below diagonal are zero]
#v(10pt)
#only("4-")[4️⃣ $mat(0, 1; 1, 0)$: ❌ Non-zero elements both above and below diagonal]
]

#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]
#v(40pt)
#only("1-")[The correct answer is:]
#v(20pt)
#only("2-")[c) $mat(1, 2; 0, 3)$ 🌟]
#v(40pt)
#only("3-")[This is the only matrix that satisfies the conditions for an upper triangular matrix.]

#only("1")[#voiceover("In conclusion...")]
#only("2")[#voiceover("The correct answer is c) the matrix with elements 1, 2 in the first row and 0, 3 in the second row.")]
#only("3")[#voiceover("This is the only matrix among the given options that satisfies all the conditions for an upper triangular matrix. Great work on identifying it correctly!")]
]