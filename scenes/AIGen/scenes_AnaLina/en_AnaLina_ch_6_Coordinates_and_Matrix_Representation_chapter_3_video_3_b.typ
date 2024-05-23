#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Great Job! 🎉]
#v(40pt)
#only("1-")[That's the correct answer! Let's see how we can solve this step by step.]
#only("1")[
#voiceover("That's not quite right. Let's see the correct solution step by step.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Given]
#v(40pt)
#only("1-")[- Matrix $A = mat(2, 0; 0, 3)$]
#v(20pt)
#only("2-")[- Vector $v = mat(1; 2)$]
#only("1")[
#voiceover("We are given a matrix A which is a 2 by 2 matrix with elements 2, 0, 0, and 3.")
]
#only("2")[
#voiceover("We are also given a vector v which is a 2 by 1 vector with elements 1 and 2.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Matrix-Vector Multiplication]
#v(40pt)
#only("1-")[To find the image of $v$ under the linear mapping represented by $A$, we multiply $A$ and $v$:]
#v(20pt)
#only("2-")[$ A v = mat(2, 0; 0, 3) mat(1; 2) $]
#only("1")[
#voiceover("To find the image of v under the linear mapping represented by A, we need to multiply the matrix A with the vector v.")
]
#only("2")[
#voiceover("This means we multiply the 2 by 2 matrix with the 2 by 1 vector.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Perform the Multiplication]
#v(40pt)
#only("1-")[$ mat(2, 0; 0, 3) mat(1; 2) = mat(2 dot 1 + 0 dot 2; 0 dot 1 + 3 dot 2) $]
#v(20pt)
#only("2-")[$ = mat(2; 6) $]
#only("1")[
#voiceover("To perform the multiplication, we multiply each row of the matrix with the column vector and add the results.")
]
#only("2")[
#voiceover("This gives us a new 2 by 1 vector with elements 2 and 6.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Result 📈]
#v(40pt)
#only("1-")[Therefore, the image of $v$ under the linear mapping represented by $A$ is $mat(2; 6)$.]
#only("1")[
#voiceover("Therefore, the image of vector v under the linear mapping represented by matrix A is the vector 2, 6.")
]
]