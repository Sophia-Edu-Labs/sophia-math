#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#only("1")[
#voiceover("Excellent work! That's the correct solution. Let's go through the steps together.")
]

#text(size: 30pt, weight: "bold")[Matrix Addition]

#v(40pt)

#only("2-")[- Add corresponding elements]

#only("2")[
#voiceover("To add two matrices, we simply add their corresponding elements.")
]

]

#slide()[

#text(size: 30pt, weight: "bold")[Solution Steps]

#v(40pt)

#only("1-")[$ mat(1, 2; 3, 4) + mat(5, 6; 7, 8) $]

#v(10pt)

#only("2-")[#align(center)[#text(fill:aqua)[⇓ Add corresponding elements]]]

#v(10pt)

#only("3-")[$ = mat(1+5, 2+6; 3+7, 4+8) $]

#v(10pt)

#only("4-")[#align(center)[#text(fill:aqua)[⇓ Simplify]]]

#v(10pt)

#only("5-")[$ = mat(6, 8; 10, 12) $]

#only("1")[#voiceover("We start with the matrices mat(1, 2; 3, 4) and mat(5, 6; 7, 8).")]

#only("2")[#voiceover("To add these matrices, we add their corresponding elements.")]

#only("3")[#voiceover("So, we get a new matrix where each element is the sum of the corresponding elements from the original matrices.")]

#only("4")[#voiceover("Now, we simplify these sums.")]

#only("5")[#voiceover("And we get the final result: mat(6, 8; 10, 12). 🎉")]

]

#slide()[

#text(size: 30pt, weight: "bold")[Summary]

#v(40pt)

#only("1-")[- Matrix addition: add corresponding elements 🧮]
// The key point about matrix addition is shown from slide 1 onward

#only("2-")[- Result: a new matrix with the sums as elements 🆕]
// The key point about the result is shown from slide 2 onward

#only("1")[#voiceover("In summary, to add two matrices, we add their corresponding elements.")]

#only("2")[#voiceover("The result is a new matrix where each element is the sum of the corresponding elements from the original matrices.")]

]