#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Linear Independence Test]
#v(40pt)
#only("1-")[- Set up matrix with vectors as columns 📜]
#v(20pt)
#only("2-")[- Row reduce the matrix 🔢]
#v(20pt)
#only("3-")[- Check for trivial solution (all zeros) ✅]
#only("1")[
#voiceover("To test for linear independence, we first set up a matrix with the vectors as columns.")
]
#only("2")[
#voiceover("Then, we row reduce this matrix.")
]
#only("3")[
#voiceover("Finally, we check if the only solution to the equation is the trivial solution, meaning all variables are zero.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[Consider vectors $v_1 = mat(1;2)$ and $v_2 = mat(3;4)$]
#v(20pt)
#only("2-")[Set up matrix: $mat(1,3;2,4)$]
#v(20pt)
#only("3-")[Row reduce: $mat(1,0;0,1)$]
#v(20pt)
#only("4-")[Trivial solution ⇒ Linearly independent ✅]
#only("1")[
#voiceover("Let's consider an example. Suppose we have vectors v1 equals (1; 2) and v2 equals (3; 4).")
]
#only("2")[
#voiceover("We set up a matrix with these vectors as columns, giving us the matrix (1, 3; 2, 4).")
]
#only("3")[
#voiceover("Row reducing this matrix leads to the identity matrix (1, 0; 0, 1).")
]
#only("4")[
#voiceover("This means the only solution is the trivial solution, where all variables are zero. Therefore, the vectors v1 and v2 are linearly independent.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[Testing Linear Independence:]
#v(20pt)
#only("2-")[1. Set up matrix with vectors as columns 📜]
#v(10pt)
#only("3-")[2. Row reduce the matrix 🔢]
#v(10pt)
#only("4-")[3. Check for trivial solution ✅]
#v(20pt)
#only("5-")[Trivial solution ⇒ Linearly independent 🌟]
#only("1")[
#voiceover("In summary, to test for linear independence:")
]
#only("2")[
#voiceover("First, set up a matrix with the vectors as columns.")
]
#only("3")[
#voiceover("Second, row reduce this matrix.")
]
#only("4")[
#voiceover("Third, check if the only solution is the trivial solution.")
]
#only("5")[
#voiceover("If the only solution is the trivial solution, then the vectors are linearly independent.")
]
]