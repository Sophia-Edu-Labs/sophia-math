#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrix Definition]
#v(40pt)

#only("1-")[Which of the following is #text(weight: "bold")[not] a matrix?]
#v(20pt)

#only("-1")[a) $mat(1, 2; 3, 4)$]#only("2-")[#text(fill:green)[a) $mat(1, 2; 3, 4)$]]
#v(10pt)
#only("-2")[b) $mat(5, 6, 7; 8, 9, 10)$]#only("3-")[#text(fill:green)[b) $mat(5, 6, 7; 8, 9, 10)$]]
#v(10pt)
#only("-3")[c) 5]#only("4-")[#text(fill:red)[c) 5]]
#v(10pt)
#only("-4")[d) $mat(2)$]#only("5-")[#text(fill:green)[d) $mat(2)$]]

#only("1")[#voiceover("Great job! You've correctly identified that 5 is not a matrix. Let's break down each option to understand why.")]

#only("2")[#voiceover("Option a is indeed a matrix. It's a 2 by 2 matrix, meaning it has 2 rows and 2 columns.")]

#only("3")[#voiceover("Option b is also a matrix. This one is a 2 by 3 matrix, with 2 rows and 3 columns.")]

#only("4")[#voiceover("Option c, which is just the number 5, is not a matrix. A single number by itself is a scalar, not a matrix.")]

#only("5")[#voiceover("Option d is a matrix too. It's a 1 by 1 matrix, which is the smallest possible matrix size.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrix Characteristics]
#v(40pt)

#only("1-")[A matrix is:] 
#v(20pt)
#only("2-")[- A rectangular array of numbers 📊]
#v(10pt)
#only("3-")[- Organized in rows and columns 🔢]
#v(10pt)
#only("4-")[- Can be of various sizes 📏]
#v(10pt)
#only("5-")[- Used in many mathematical operations ➗]

#only("1")[#voiceover("Now, let's discuss what makes a matrix a matrix.")]

#only("2")[#voiceover("First and foremost, a matrix is a rectangular array of numbers. This means the elements are arranged in a grid-like structure.")]

#only("3")[#voiceover("These numbers are organized into rows and columns. The number of rows and columns defines the size or dimensions of the matrix.")]

#only("4")[#voiceover("Matrices can come in various sizes. We can have 2 by 2 matrices, 3 by 4 matrices, or even 1 by 1 matrices like we saw in the previous slide.")]

#only("5")[#voiceover("Matrices are incredibly useful and are used in many mathematical operations, especially in linear algebra, computer graphics, and data analysis.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Why 5 is Not a Matrix]
#v(40pt)

#only("1-")[5 is:] 
#v(20pt)
#only("2-")[- A single number (scalar) 🔢]
#v(10pt)
#only("3-")[- Not arranged in rows and columns 🚫]
#v(10pt)
#only("4-")[- Doesn't have dimensions like a matrix 📏]

#only("1")[#voiceover("Let's focus on why 5, the correct answer to our question, is not a matrix.")]

#only("2")[#voiceover("5 is a single number, which we call a scalar in mathematics. Scalars are used to scale or multiply other mathematical objects, but they're not matrices themselves.")]

#only("3")[#voiceover("Unlike matrices, 5 is not arranged in rows and columns. It's just a single value without any structure.")]

#only("4")[#voiceover("Matrices have dimensions, like 2 by 2 or 3 by 4. The number 5 doesn't have these kinds of dimensions. It's just one single value.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]
#v(40pt)

#only("1-")[Remember:] 
#v(20pt)
#only("2-")[- Matrices are rectangular arrays 🔲]
#v(10pt)
#only("3-")[- Single numbers are scalars, not matrices 🔢]
#v(10pt)
#only("4-")[- Even a 1x1 matrix is different from a scalar ≠]

#only("1")[#voiceover("To wrap up, let's summarize what we've learned.")]

#only("2")[#voiceover("Always remember that matrices are rectangular arrays of numbers. They have a specific structure with rows and columns.")]

#only("3")[#voiceover("Single numbers, like 5 in our example, are scalars. They're important in math, but they're not matrices.")]

#only("4")[#voiceover("Even a 1 by 1 matrix, which contains only one number, is different from a scalar. It still has the structure of a matrix, with one row and one column. Understanding these distinctions is crucial in linear algebra and many areas of advanced mathematics.")]
]