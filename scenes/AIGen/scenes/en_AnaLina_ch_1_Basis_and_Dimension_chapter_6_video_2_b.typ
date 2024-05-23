#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Great Job! 🎉]
#v(40pt)
#only("1-")[The correct answer is:]
#v(20pt)
#only("2-")[#text(fill:green)[b) columns]]
#v(40pt)
#only("3-")[Let's see why...]
#only("1")[#voiceover("Fantastic work! You've selected the correct answer.")]
#only("2")[#voiceover("The change of basis matrix is indeed formed by the new basis vectors as columns.")]
#only("3")[#voiceover("Now, let's dive into the explanation to understand this better.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Change of Basis Matrix]
#v(40pt)
#only("1-")[- Transforms coordinates from one basis to another]
#v(20pt)
#only("2-")[- New basis vectors become the columns]
#v(40pt)
#only("3-")[Example: Basis $B = \{mat(1;1), mat(1;-1)\}$]
#v(20pt)
#only("4-")[Change of basis matrix: $P_B = mat(1, 1; 1, -1)$]
#only("1")[#voiceover("The change of basis matrix is used to transform coordinates from one basis to another.")]
#only("2")[#voiceover("When constructing this matrix, the new basis vectors become the columns of the matrix.")]
#only("3")[#voiceover("For instance, let's say we have a new basis B consisting of the vectors (1; 1) and (1; -1).")]
#only("4")[#voiceover("The change of basis matrix, denoted as P sub B, would then be the matrix with these vectors as its columns.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Why Columns? 🤔]
#v(40pt)
#only("1-")[- Matrix-vector multiplication]
#v(20pt)
#only("2-")[- Columns are multiplied by scalars and added]
#v(40pt)
#only("3-")[Example: $P_B mat(x; y) = x mat(1; 1) + y mat(1; -1)$]
#v(20pt)
#only("4-")[- Expresses vector as linear combination of basis vectors]
#only("1")[#voiceover("The reason we use columns is due to how matrix-vector multiplication works.")]
#only("2")[#voiceover("When a matrix is multiplied by a vector, each column of the matrix is multiplied by the corresponding scalar in the vector, and the results are added together.")]
#only("3")[#voiceover("In our example, multiplying P sub B by a vector (x; y) would give x times the first column vector plus y times the second column vector.")]
#only("4")[#voiceover("This expresses the vector as a linear combination of the new basis vectors, which is exactly what we want when changing basis.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Recap]
#v(40pt)
#only("1-")[- Change of basis matrix transforms coordinates 🔄]
#v(20pt)
#only("2-")[- New basis vectors form the columns 📏]
#v(20pt)
#only("3-")[- Matrix-vector multiplication expresses linear combination 🧮]
#v(40pt)
#only("4-")[Great work on understanding this concept! 👏]
#only("1")[#voiceover("To recap, the change of basis matrix transforms coordinates from one basis to another.")]
#only("2")[#voiceover("The new basis vectors form the columns of this matrix.")]
#only("3")[#voiceover("And matrix-vector multiplication with the change of basis matrix expresses a vector as a linear combination of the new basis vectors.")]
#only("4")[#voiceover("Fantastic job on grasping this important concept! Keep up the great work.")]
]