#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Great job! That's the correct approach. Let's solve this step by step.")
]
#text(size: 30pt, weight: "bold")[Given Information]
#v(40pt)
#only("2-")[- Vector: $mat(3; 4)$]
#v(20pt)
#only("3-")[- New basis: $mat(1; 1), mat(1; -1)$]
#only("2")[
#voiceover("We're given the vector (3; 4)...")
]
#only("3")[
#voiceover("...and the new basis vectors (1; 1) and (1; -1).")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Approach]
#v(40pt)
#only("1-")[- Use change of basis matrix]
#v(20pt)
#only("2-")[- Solve linear system]
#only("1")[
#voiceover("To find the coordinates with respect to the new basis, we'll use the change of basis matrix.")
]
#only("2")[
#voiceover("We set up a linear system and solve for the coordinates.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Solution]
#v(40pt)
#only("1-")[Change of basis matrix: $mat(1, 1; 1, -1)$]
#v(20pt)
#only("2-")[Linear system: $mat(1, 1; 1, -1) mat(x; y) = mat(3; 4)$]
#v(20pt)
#only("3-")[Solving:]
#only("4-")[$ mat(1, 1; 1, -1) mat(x; y) = mat(3; 4) $]
#only("5-")[$ mat(x + y; x - y) = mat(3; 4) $]
#only("6-")[$ x + y = 3 $]
#only("7-")[$ x - y = 4 $]

#only("1")[
#voiceover("First, we form the change of basis matrix using the new basis vectors as columns.")
]
#only("2")[
#voiceover("Next, we set up the linear system by multiplying the change of basis matrix with the unknown coordinates vector, equating it to the given vector.")
]
#only("3")[
#voiceover("Now, let's solve this system step by step.")
]
#only("4")[
#voiceover("We start with the matrix equation.")
]
#only("5")[
#voiceover("Multiplying the matrices, we get two equations.")
]
#only("6")[
#voiceover("The first equation is x plus y equals 3.")
]
#only("7")[
#voiceover("The second equation is x minus y equals 4.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Solution]
#v(40pt)
#only("1-")[Adding equations: $2x = 7$]
#v(20pt)
#only("2-")[$ x = 3.5 $]
#v(20pt)
#only("3-")[Subtracting equations: $2y = -1$]
#v(20pt)
#only("4-")[$ y = -0.5 $]
#v(20pt)
#only("5-")[Coordinates: $(3.5, -0.5)$]

#only("1")[
#voiceover("Adding the equations eliminates y, giving 2x equals 7.")
]
#only("2")[
#voiceover("Solving for x, we get x equals 3.5.")
]
#only("3")[
#voiceover("Subtracting the equations eliminates x, giving 2y equals negative 1.")
]
#only("4")[
#voiceover("Solving for y, we get y equals negative 0.5.")
]
#only("5")[
#voiceover("Therefore, the coordinates of the vector (3; 4) with respect to the new basis (1; 1), (1; -1) are (3.5, -0.5).")
]
]