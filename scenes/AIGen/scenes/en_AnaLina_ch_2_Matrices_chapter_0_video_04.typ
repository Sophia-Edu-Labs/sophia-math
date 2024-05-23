#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrix Recap 🎓]
#v(40pt)
#only("1-")[- Rectangular array of numbers 📊]
#v(20pt)
#only("2-")[- Arranged in rows and columns 📈]
#only("1")[
#voiceover("Let's recap what we've learned about matrices. A matrix is a rectangular array of numbers.")
]
#only("2")[
#voiceover("These numbers are arranged in rows and columns.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Matrix Notation 📝]
#v(40pt)
#only("1-")[- Example: $mat(1, 2; 3, 4)$]
#v(20pt)
#only("2-")[- Rows separated by semicolons (;)]
#v(20pt)
#only("3-")[- Elements within a row separated by commas (,)]
#only("1")[
#voiceover("In Typst, we write a matrix using the 'mat' function. For example, 'mat(1, 2; 3, 4)' represents a 2 by 2 matrix.")
]
#only("2")[
#voiceover("Rows are separated by semicolons.")
]
#only("3")[
#voiceover("And elements within a row are separated by commas.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Matrix Dimensions 📏]
#v(40pt)
#only("1-")[- Number of rows and columns]
#v(20pt)
#only("2-")[- Example: $mat(1, 2; 3, 4)$ is a 2×2 matrix]
#only("1")[
#voiceover("The dimensions of a matrix are given by the number of rows and columns it has.")
]
#only("2")[
#voiceover("For instance, 'mat(1, 2; 3, 4)' is a 2 by 2 matrix because it has 2 rows and 2 columns.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary 🎯]
#v(40pt)
#only("1-")[- Matrix: rectangular array of numbers 📊]
#v(20pt)
#only("2-")[- Arranged in rows and columns 📈]
#v(20pt)
#only("3-")[- Typst notation: $mat(1, 2; 3, 4)$ 📝]
#v(20pt)
#only("4-")[- Dimensions: number of rows and columns 📏]
#only("1")[
#voiceover("To sum up, a matrix is a rectangular array of numbers...")
]
#only("2")[
#voiceover("...arranged in rows and columns...")
]
#only("3")[
#voiceover("...written in Typst using the 'mat' function with semicolons separating rows and commas separating elements within a row...")
]
#only("4")[
#voiceover("...and its dimensions are given by the number of rows and columns it has.")
]
]