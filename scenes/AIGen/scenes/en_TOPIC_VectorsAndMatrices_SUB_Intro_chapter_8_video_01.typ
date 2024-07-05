#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrix Multiplication for Non-Square Matrices]
#v(40pt)

#only("1-")[🏭 Manufacturing Company Scenario]
#v(20pt)
#only("2-")[📊 Production Data: 3 products, 2 factories]
#v(20pt)
#only("3-")[🧮 Need to calculate total production]
#v(20pt)
#only("4-")[➡️ Non-square matrix multiplication]

#only("1")[
#voiceover("Let's dive into matrix multiplication for non-square matrices. To understand why this is important, imagine you're working for a manufacturing company.")
]

#only("2")[
#voiceover("This company produces three different products in two factories. We have production data for each product in each factory, which we can represent as a matrix.")
]

#only("3")[
#voiceover("Now, we need to calculate the total production for each product across all factories. This is where non-square matrix multiplication comes in handy.")
]

#only("4")[
#voiceover("We'll use non-square matrix multiplication to solve this problem efficiently. Let's see how it works in the next slide.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Understanding Non-Square Matrices]
#v(40pt)

#only("1-")[📏 Square vs. Non-Square Matrices]
#v(20pt)
#only("2-")[🔢 Example: Production Data Matrix]
#v(20pt)
#only("3-")[$ A = mat(100, 150; 200, 250; 300, 350) $]
#v(20pt)
#only("4-")[3 rows (products) × 2 columns (factories)]

#only("1")[
#voiceover("Before we dive into multiplication, let's understand what non-square matrices are. Unlike square matrices, which have an equal number of rows and columns, non-square matrices have different numbers of rows and columns.")
]

#only("2")[
#voiceover("Let's look at our production data matrix as an example.")
]

#only("3")[
#voiceover("Here's our matrix A. Each row represents a product, and each column represents a factory. The numbers show the production quantities.")
]

#only("4")[
#voiceover("This matrix has 3 rows for our three products and 2 columns for our two factories, making it a non-square matrix.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Multiplying Non-Square Matrices]
#v(40pt)

#only("1-")[🔢 Production Data: $ A = mat(100, 150; 200, 250; 300, 350) $]
#v(20pt)
#only("2-")[💰 Price Vector: $ p = mat(10; 15; 20) $]
#v(20pt)
#only("3-")[💡 Goal: Total value per factory]
#v(20pt)
#only("4-")[✖️ Result: $ p^T A = mat(10, 15, 20) mat(100, 150; 200, 250; 300, 350) $]

#only("1")[
#voiceover("Now, let's multiply our non-square matrices. We'll use our production data matrix A from the previous slide.")
]

#only("2")[
#voiceover("We also have a price vector p, where each element represents the price of a product. The first product costs 10 dollars, the second 15 dollars, and the third 20 dollars.")
]

#only("3")[
#voiceover("Our goal is to calculate the total value of production for each factory.")
]

#only("4")[
#voiceover("To do this, we'll multiply the transpose of our price vector by our production matrix. This is an example of non-square matrix multiplication, as we're multiplying a 1-by-3 matrix by a 3-by-2 matrix.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Recap: Non-Square Matrix Multiplication]
#v(40pt)

#only("1-")[🔢 Dimensions matter: (m × n) × (n × p) = (m × p)]
#v(20pt)
#only("2-")[💼 Real-world applications]
#v(20pt)
#only("3-")[🧮 Efficient calculations with large datasets]
#v(20pt)
#only("4-")[🔍 Next: Detailed multiplication process]

#only("1")[
#voiceover("To recap, non-square matrix multiplication is possible when the number of columns in the first matrix equals the number of rows in the second matrix. The resulting matrix will have the number of rows from the first matrix and the number of columns from the second matrix.")
]

#only("2")[
#voiceover("This concept has many real-world applications, like our manufacturing example.")
]

#only("3")[
#voiceover("It allows us to perform efficient calculations with large datasets, combining information from different sources.")
]

#only("4")[
#voiceover("In our next video, we'll dive deeper into the process of multiplying non-square matrices step by step.")
]
]