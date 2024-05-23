#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#only("1")[
#voiceover("Great job! You correctly identified that the vectors mat(1; 2; 3), mat(2; 4; 6), and mat(3; 6; 9) are linearly dependent, and a basis is just mat(1; 2; 3). Let's go through the solution step by step.")
]

#text(size: 30pt, weight: "bold")[Given Vectors]

#v(40pt)

#only("2-")[- $mat(1; 2; 3)$]
#only("3-")[- $mat(2; 4; 6)$]
#only("4-")[- $mat(3; 6; 9)$]
// The given vectors are shown one by one from slide 2 to 4

#only("2")[
#voiceover("We are given the vector mat(1; 2; 3),")
]

#only("3")[
#voiceover("the vector mat(2; 4; 6),") 
]

#only("4")[
#voiceover("and the vector mat(3; 6; 9).")
]

]

#slide()[

#only("1")[
#voiceover("To find a basis, we need to check for linear independence. Let's set up a matrix with these vectors as columns.")
]

#text(size: 30pt, weight: "bold")[Matrix Setup]

#v(40pt)

#only("2-")[$ mat(1, 2, 3; 2, 4, 6; 3, 6, 9) $]
// The matrix is shown from slide 2 onward

#only("2")[
#voiceover("We create a matrix with the given vectors as columns. This gives us the matrix mat(1, 2, 3; 2, 4, 6; 3, 6, 9).")
]

]

#slide()[

#only("1")[
#voiceover("Now, we perform row reduction on this matrix to see if we have a free variable, which would indicate linear dependence.")
]

#text(size: 30pt, weight: "bold")[Row Reduction]

#v(40pt)

#only("2-")[$ mat(1, 2, 3; 2, 4, 6; 3, 6, 9) $]
// The original matrix is shown from slide 2 onward

#v(10pt)

#only("3-")[#align(center)[#text(fill:aqua)[⇓ Row reduce]]]
// The row reduction step is highlighted in aqua from slide 3 onward

#v(10pt)

#only("4-")[$ mat(1, 2, 3; 0, 0, 0; 0, 0, 0) $]
// The row reduced matrix is shown from slide 4 onward

#only("2")[
#voiceover("We start with the matrix mat(1, 2, 3; 2, 4, 6; 3, 6, 9).")
]

#only("3")[
#voiceover("We row reduce this matrix.")
]

#only("4")[
#voiceover("After row reduction, we get the matrix mat(1, 2, 3; 0, 0, 0; 0, 0, 0).")
]

]

#slide()[

#only("1")[
#voiceover("The row reduced matrix has two free variables, indicating linear dependence. This means we can remove two vectors to get a basis.")
]

#text(size: 30pt, weight: "bold")[Basis]

#v(40pt)

#only("2-")[- $mat(1; 2; 3)$]
// The basis vector is shown from slide 2 onward

#only("2")[
#voiceover("We can choose any one of the original vectors as a basis. Let's choose mat(1; 2; 3).")
]

#v(20pt)

#only("3-")[Therefore, a basis for the given vector space is $\{mat(1; 2; 3)\}$. 🎉]
// The conclusion is shown from slide 3 onward

#only("3")[
#voiceover("Therefore, a basis for the vector space spanned by the given vectors is the set containing the vector mat(1; 2; 3). Great work!")
]

]