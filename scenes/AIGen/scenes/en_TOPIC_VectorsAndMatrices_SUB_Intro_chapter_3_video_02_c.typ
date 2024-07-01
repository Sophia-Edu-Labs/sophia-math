#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[What is a Matrix?]
#v(40pt)

#only("-1")[a) A single number]#only("2-")[#text(fill:red)[a) A single number]]
#v(10pt)
#only("-2")[b) A row of numbers]#only("3-")[#text(fill:red)[b) A row of numbers]]
#v(10pt)
#only("-3")[c) A rectangular array of numbers]#only("4-")[#text(fill:green)[c) A rectangular array of numbers]]
#v(10pt)
#only("-4")[d) None of the above]#only("5-")[#text(fill:red)[d) None of the above]]

#v(40pt)

#only("1")[#voiceover("Excellent job! You've answered correctly. Let's break down each option to understand why c is the right answer.")]

#only("2")[#voiceover("Option a, a single number, is incorrect. While a matrix can contain numbers, it's not limited to just one number. A single number is actually called a scalar.")]

#only("3")[#voiceover("Option b, a row of numbers, is also incorrect. Although a matrix can include rows of numbers, it's not limited to just one row. A single row of numbers is typically called a row vector.")]

#only("4")[#voiceover("Option c, a rectangular array of numbers, is the correct answer! A matrix is indeed a rectangular arrangement of numbers organized in rows and columns.")]

#only("5")[#voiceover("Option d, none of the above, is incorrect because we've found our correct answer in option c.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrix: A Closer Look]
#v(20pt)

#only("1-")[A matrix is a rectangular array of numbers arranged in rows and columns.]
#v(20pt)

#only("2-")[Example of a 2x3 matrix:]
#v(10pt)
#only("2-")[$ A = mat(1, 2, 3; 4, 5, 6) $]
#v(20pt)

#only("3-")[- Rows: horizontal lines of numbers ↔️]
#v(10pt)
#only("4-")[- Columns: vertical lines of numbers ↕️]
#v(10pt)
#only("5-")[- Elements: individual numbers in the matrix 🔢]

#only("1")[#voiceover("Now, let's take a closer look at what a matrix actually is.")]

#only("2")[#voiceover("Here's an example of a matrix. This is a 2 by 3 matrix, meaning it has 2 rows and 3 columns. We often write matrices using capital letters, so we'll call this matrix A.")]

#only("3")[#voiceover("The rows of a matrix are the horizontal lines of numbers. In this case, we have two rows: 1, 2, 3 and 4, 5, 6.")]

#only("4")[#voiceover("The columns are the vertical lines of numbers. Here, we have three columns: 1 and 4, 2 and 5, and 3 and 6.")]

#only("5")[#voiceover("Each individual number in the matrix is called an element. So 1, 2, 3, 4, 5, and 6 are all elements of this matrix.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Why Matrices Matter]
#v(20pt)

#only("1-")[Matrices are powerful tools in mathematics and have many applications:]
#v(20pt)

#only("2-")[- Solving systems of linear equations 📊]
#v(10pt)
#only("3-")[- Representing and transforming data 🔄]
#v(10pt)
#only("4-")[- Computer graphics and 3D modeling 🖥️]
#v(10pt)
#only("5-")[- Machine learning and AI algorithms 🤖]

#only("1")[#voiceover("You might be wondering why matrices are important. Well, they're incredibly useful in many areas of mathematics and real-world applications.")]

#only("2")[#voiceover("Matrices are crucial for solving systems of linear equations efficiently. They allow us to represent multiple equations compactly and solve them simultaneously.")]

#only("3")[#voiceover("In data science, matrices are used to represent and transform large datasets. This is especially useful when dealing with multidimensional data.")]

#only("4")[#voiceover("In computer graphics, matrices are used to perform transformations like rotation, scaling, and translation in 3D modeling and animation.")]

#only("5")[#voiceover("Matrices also play a fundamental role in machine learning and artificial intelligence algorithms, particularly in neural networks and deep learning models.")]
]