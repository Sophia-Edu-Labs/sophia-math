#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Let's recap the key points about matrix notation and types.")
]
#text(size: 30pt, weight: "bold")[Matrix Notation & Types 📜]
// The title "Matrix Notation & Types" is shown on this slide
#v(40pt)
#only("2")[
#voiceover("Matrices are denoted using a rectangular array enclosed in parentheses or brackets.")
]
#only("2-")[
- Notation: $mat(1, 2; 3, 4)$ or $[1, 2; 3, 4]$
]
// The matrix notation is shown from slide 2 onward
#v(40pt)
#only("3")[
#voiceover("There are several types of matrices, each with their own characteristics.")
]
#only("3-")[
- Types: 
  - Row matrix 🡒
  - Column matrix 🡓 
  - Square matrix ⬜
  - Zero matrix 0️⃣
]
// The types of matrices are listed from slide 3 onward
#v(40pt)
#only("4")[
#voiceover("A row matrix has only one row, like this:")
]
#only("4-")[
- Row matrix: $mat(1, 2, 3)$
]
// An example of a row matrix is shown from slide 4 onward
#v(40pt)
#only("5")[
#voiceover("A column matrix has only one column, like this:")
]
#only("5-")[
- Column matrix: $mat(1; 2; 3)$
]
// An example of a column matrix is shown from slide 5 onward
#v(40pt)
#only("6")[
#voiceover("A square matrix has an equal number of rows and columns, like this:")
]
#only("6-")[
- Square matrix: $mat(1, 2; 3, 4)$
]
// An example of a square matrix is shown from slide 6 onward
#v(40pt)
#only("7")[
#voiceover("A zero matrix has all elements equal to zero, like this:")
]
#only("7-")[
- Zero matrix: $mat(0, 0; 0, 0)$
]
// An example of a zero matrix is shown from slide 7 onward
]

#slide()[
#only("1")[
#voiceover("To summarize:")
]
#text(size: 30pt, weight: "bold")[Key Points 🔑]
// The title "Key Points" is shown on this slide
#v(40pt)
#only("2")[
#voiceover("Matrices are denoted using a rectangular array enclosed in parentheses or brackets.")
]
#only("2-")[
- Notation: $mat(...)$ or $[...]$
]
// The key point about matrix notation is shown from slide 2 onward
#v(40pt)
#only("3")[
#voiceover("The main types of matrices are row matrices, column matrices, square matrices, and zero matrices.")
]
#only("3-")[
- Types: row 🡒, column 🡓, square ⬜, zero 0️⃣
]
// The key point about matrix types is shown from slide 3 onward
#v(40pt)
#only("4")[
#voiceover("Understanding the notation and types of matrices is crucial for working with them effectively.")
]
#only("4-")[
- 📝 Notation & types are fundamental
]
// The importance of understanding notation and types is emphasized from slide 4 onward
]