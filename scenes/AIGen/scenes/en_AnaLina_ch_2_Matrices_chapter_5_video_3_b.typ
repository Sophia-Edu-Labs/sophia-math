#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("That's not quite right. Let's go through the correct solution together.")
]

#text(size: 30pt, weight: "bold")[Matrix Multiplication]

#v(40pt)

#only("2-")[$ mat(2, 0; 1, 3) · mat(4, 1; 2, 2) = \ ?$]

#only("2")[
#voiceover("We want to multiply the matrices mat(2, 0; 1, 3) and mat(4, 1; 2, 2).")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Approach]

#v(40pt)

#only("1-")[- Multiply rows of first matrix with columns of second matrix 🔢]
// The approach of multiplying rows with columns is shown from slide 1 onward

#only("2-")[- Add the resulting products ➕]
// The approach of adding the products is shown from slide 2 onward

#only("1")[
#voiceover("To multiply two matrices, we multiply each row of the first matrix with each column of the second matrix.")
]

#only("2")[
#voiceover("Then, we add the resulting products to get each element of the resulting matrix.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Solution Steps]

#v(40pt)

#only("1-")[$ mat(2, 0; 1, 3) · mat(4, 1; 2, 2) =$]

#v(10pt)

#only("2-")[#align(center)[#text(fill:aqua)[⇓ Multiply first row with columns]]]

#v(10pt)

#only("3-")[$ mat((2·4 + 0·2), (2·1 + 0·2); ...) =$]

#v(10pt)

#only("4-")[#align(center)[#text(fill:aqua)[⇓ Multiply second row with columns]]]

#v(10pt)

#only("5-")[$ mat((2·4 + 0·2), (2·1 + 0·2); (1·4 + 3·2), (1·1 + 3·2)) =$]

#v(10pt)

#only("6-")[#align(center)[#text(fill:aqua)[⇓ Perform additions]]]

#v(10pt)

#only("7-")[$ mat(8, 2; 10, 7) $]

#only("1")[#voiceover("We start with the matrices mat(2, 0; 1, 3) and mat(4, 1; 2, 2).")]

#only("2")[#voiceover("First, we multiply the first row of the first matrix with the columns of the second matrix.")]

#only("3")[#voiceover("Two times four plus zero times two gives eight, and two times one plus zero times two gives two.")]

#only("4")[#voiceover("Next, we multiply the second row of the first matrix with the columns of the second matrix.")]

#only("5")[#voiceover("One times four plus three times two gives ten, and one times one plus three times two gives seven.")]

#only("6")[#voiceover("Finally, we perform the additions to get each element of the resulting matrix.")]

#only("7")[#voiceover("So, the result of multiplying mat(2, 0; 1, 3) and mat(4, 1; 2, 2) is the matrix mat(8, 2; 10, 7).")]
]