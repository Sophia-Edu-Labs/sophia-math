#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrix Definition]
#v(40pt)
What is a matrix?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false.
#only("-1")[a) A single number]#only("2-")[#text(fill:red)[a) A single number]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) A rectangular array of numbers]#only("3-")[#text(fill:green)[b) A rectangular array of numbers]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) A set of equations]#only("4-")[#text(fill:red)[c) A set of equations]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) A graph]#only("5-")[#text(fill:red)[d) A graph]]
#v(40pt)
#only("1")[#voiceover("Great job! That's the correct answer.")]
// Briefly explain why b) is correct
#only("2")[#voiceover("A matrix is indeed a rectangular array of numbers, arranged in rows and columns.")]
// Briefly explain why a) is incorrect
#only("3")[#voiceover("A single number is not a matrix. A matrix must have at least one row and one column.")]
// Briefly explain why c) is incorrect 
#only("4")[#voiceover("A set of equations is not a matrix. While equations can be represented using matrices, they are not the same thing.")]
// Briefly explain why d) is incorrect
#only("5")[#voiceover("A graph is a visual representation of a function or data, not a matrix.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Matrix Example]
#v(40pt)
Here's an example of a matrix:
#v(20pt)
$mat(1, 2, 3; 4, 5, 6)$
#v(20pt)
#only("1-")[- This is a 2 × 3 matrix]
#only("2-")[- It has 2 rows and 3 columns]
#only("3-")[- The numbers are arranged in a rectangular array]
#only("1")[#voiceover("Let's look at an example of a matrix.")]
#only("2")[#voiceover("This matrix has 2 rows and 3 columns, making it a 2 by 3 matrix.")]
#only("3")[#voiceover("As you can see, the numbers 1 through 6 are arranged in a rectangular array, which is the defining characteristic of a matrix.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Matrix Notation]
#v(40pt)
Matrices are usually denoted by capital letters, like:
#v(20pt)
$A = mat(1, 2; 3, 4)$
#v(20pt)
#only("1-")[- Individual elements are denoted by lowercase letters with subscripts]
#only("2-")[- For example, $a_(11) = 1$, $a_(12) = 2$, $a_(21) = 3$, $a_(22) = 4$]
#only("1")[#voiceover("In mathematics, matrices are usually denoted by capital letters, like A in this example.")]
#only("2")[#voiceover("Individual elements of the matrix are denoted by lowercase letters with two subscripts. The first subscript indicates the row and the second indicates the column. For instance, a sub 1 1 equals 1, a sub 1 2 equals 2, and so on.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- A matrix is a rectangular array of numbers 📜]
#v(20pt)
#only("2-")[- It is arranged in rows and columns 📊]
#v(20pt)
#only("3-")[- Matrices are denoted by capital letters, elements by lowercase with subscripts 🔠]
#v(20pt)
#only("4-")[Great job on identifying the correct definition of a matrix! 🎉]
#only("1")[#voiceover("To summarize, a matrix is a rectangular array of numbers.")]
#only("2")[#voiceover("It is arranged in rows and columns.")]
#only("3")[#voiceover("Matrices are denoted by capital letters, and individual elements are denoted by lowercase letters with subscripts indicating their position.")]
#only("4")[#voiceover("Fantastic work on correctly identifying the definition of a matrix! Keep up the great work in your math studies.")]
]