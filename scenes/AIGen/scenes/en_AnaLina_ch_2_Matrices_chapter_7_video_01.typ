#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Inverse of a Matrix]
#v(40pt)
#only("1-")[- Matrix multiplied by its inverse gives identity matrix]
#v(20pt)
#only("2-")[$ A A^{-1} = A^{-1} A = I $]
#only("1")[
#voiceover("The inverse of a matrix A is another matrix A to the power of negative 1, such that when A is multiplied by A inverse, the result is the identity matrix.")
]
#only("2")[
#voiceover("In other words, A times A inverse equals A inverse times A equals the identity matrix I.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example 1]
#v(40pt)
#only("1-")[Find the inverse of $mat(2, 1; 1, 2)$.]
// The problem statement is shown from slide 1 onward
#v(20pt)
#only("2-")[Step 1: Calculate the determinant.]
// Step 1 is shown from slide 2 onward
#v(20pt)
#only("3-")[$ det(A) = 2 dot 2 - 1 dot 1 = 3 $]
// The calculation of the determinant is shown from slide 3 onward
#v(20pt)
#only("4-")[Step 2: Find the adjugate matrix.]
// Step 2 is shown from slide 4 onward
#v(20pt)
#only("5-")[$ "adj"(A) = mat(2, -1; -1, 2) $]
// The adjugate matrix is shown from slide 5 onward
#v(20pt)
#only("6-")[Step 3: Divide the adjugate by the determinant.]
// Step 3 is shown from slide 6 onward
#v(20pt)
#only("7-")[$ A^(-1) = 1/3 mat(2, -1; -1, 2) = mat(2/3, -1/3; -1/3, 2/3) $]
// The final inverse matrix is shown from slide 7 onward
#only("1")[
#voiceover("Let's find the inverse of the matrix with elements 2, 1, 1, 2.")
]
#only("2")[
#voiceover("The first step is to calculate the determinant of the matrix.")
]
#only("3")[
#voiceover("The determinant is 2 times 2 minus 1 times 1, which equals 3.")
]
#only("4")[
#voiceover("Next, we find the adjugate matrix.")
]
#only("5")[
#voiceover("The adjugate matrix has elements 2, negative 1, negative 1, 2.")
]
#only("6")[
#voiceover("Finally, we divide the adjugate matrix by the determinant.")
]
#only("7")[
#voiceover("The inverse is one-third times the adjugate matrix, which gives the matrix with elements two-thirds, negative one-third, negative one-third, two-thirds.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example 2]
#v(40pt)
#only("1-")[Find the inverse of $mat(1, 2; 3, 4)$.]
#v(20pt)
#only("2-")[Step 1: Calculate the determinant.]
#v(20pt)
#only("3-")[$ det(A) = 1 dot 4 - 2 dot 3 = -2 $]
#v(20pt)
#only("4-")[Step 2: Find the adjugate matrix.]
#v(20pt)
#only("5-")[$ "adj"(A) = mat(4, -2; -3, 1) $]
#v(20pt)
#only("6-")[Step 3: Divide the adjugate by the determinant.]
#v(20pt)
#only("7-")[$ A^(-1) = -1/2 mat(4, -2; -3, 1) = mat(-2, 1; 3/2, -1/2) $]
#only("1")[
#voiceover("Now let's find the inverse of the matrix with elements 1, 2, 3, 4.")
]
#only("2")[
#voiceover("Again, we start by calculating the determinant.")
]
#only("3")[
#voiceover("The determinant is 1 times 4 minus 2 times 3, which equals negative 2.")
]
#only("4")[
#voiceover("Next, we find the adjugate matrix.")
]
#only("5")[
#voiceover("The adjugate matrix has elements 4, negative 2, negative 3, 1.")
]
#only("6")[
#voiceover("Finally, we divide the adjugate matrix by the determinant.")
]
#only("7")[
#voiceover("The inverse is negative one-half times the adjugate matrix, which gives the matrix with elements negative 2, 1, three-halves, negative one-half.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[1. Calculate the determinant 🧮]
#v(20pt)
#only("2-")[2. Find the adjugate matrix 🔄]
#v(20pt)
#only("3-")[3. Divide the adjugate by the determinant ➗]
#v(20pt)
#only("4-")[$ A^(-1) = 1/"det"(A) "adj"(A) $]
#only("1")[
#voiceover("To summarize, finding the inverse of a matrix involves three steps.")
]
#only("2")[
#voiceover("First, calculate the determinant of the matrix.")
]
#only("3")[
#voiceover("Second, find the adjugate matrix by transposing and negating certain elements.")
]
#only("4")[
#voiceover("Finally, divide the adjugate matrix by the determinant to get the inverse matrix.")
]
]