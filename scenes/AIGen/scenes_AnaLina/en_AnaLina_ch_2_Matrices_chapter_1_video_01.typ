#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrix Notation]
#v(40pt)
#only("1-")[- Rectangular array of numbers]
#v(20pt)
#only("2-")[- Denoted by $mat(a_11, a_12, ...; a_21, a_22, ...; ...)$]
#v(20pt)
#only("3-")[- Example: $mat(1, 2; 3, 4)$]

#only("1")[
#voiceover("A matrix is a rectangular array of numbers, arranged in rows and columns.")
]
#only("2")[
#voiceover("We denote a matrix using the notation 'mat' followed by the elements, separated by commas for elements in the same row and semicolons for different rows.")
]
#only("3")[
#voiceover("For example, the matrix with elements 1, 2 in the first row and 3, 4 in the second row is written as mat(1, 2; 3, 4).")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Row Matrix]
#v(40pt)
#only("1-")[- Matrix with only one row]
#v(20pt)
#only("2-")[- Example: $mat(1, 2, 3)$]

#only("1")[
#voiceover("A row matrix is a matrix that has only one row.")
]
#only("2")[
#voiceover("For instance, mat(1, 2, 3) is a row matrix with elements 1, 2, and 3.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Column Matrix]
#v(40pt)
#only("1-")[- Matrix with only one column]
#v(20pt)
#only("2-")[- Example: $mat(1; 2; 3)$]

#only("1")[
#voiceover("A column matrix, also known as a column vector, is a matrix that has only one column.")
]
#only("2")[
#voiceover("For example, mat(1; 2; 3) is a column matrix with elements 1, 2, and 3.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Square Matrix]
#v(40pt)
#only("1-")[- Matrix with an equal number of rows and columns]
#v(20pt)
#only("2-")[- Example: $mat(1, 2; 3, 4)$]

#only("1")[
#voiceover("A square matrix is a matrix that has an equal number of rows and columns.")
]
#only("2")[
#voiceover("The matrix mat(1, 2; 3, 4) is an example of a square matrix, as it has two rows and two columns.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zero Matrix]
#v(40pt)
#only("1-")[- Matrix with all elements equal to zero]
#v(20pt)
#only("2-")[- Example: $mat(0, 0; 0, 0)$]

#only("1")[
#voiceover("A zero matrix is a matrix where all elements are equal to zero.")
]
#only("2")[
#voiceover("For instance, mat(0, 0; 0, 0) is a zero matrix with two rows and two columns.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Matrix notation: $mat(a_11, a_12, ...; a_21, a_22, ...; ...)$]
#v(20pt)
#only("2-")[- Row matrix: One row]
#v(20pt)
#only("3-")[- Column matrix: One column]
#v(20pt)
#only("4-")[- Square matrix: Equal number of rows and columns]
#v(20pt)
#only("5-")[- Zero matrix: All elements are zero]

#only("1")[
#voiceover("In summary, we denote matrices using the 'mat' notation, separating elements with commas and rows with semicolons.")
]
#only("2")[
#voiceover("A row matrix has only one row,")
]
#only("3")[
#voiceover("while a column matrix has only one column.")
]
#only("4")[
#voiceover("A square matrix has an equal number of rows and columns,")
]
#only("5")[
#voiceover("and a zero matrix has all elements equal to zero.")
]
]