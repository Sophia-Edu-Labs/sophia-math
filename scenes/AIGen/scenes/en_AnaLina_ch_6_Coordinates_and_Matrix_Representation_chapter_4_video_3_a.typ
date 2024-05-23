#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Great Job! 🎉]
#v(40pt)
That's the correct answer! Let's see how we can solve this step by step.
#only("1")[
#voiceover("Great job! That's the correct answer. Let's see how we can solve this step by step.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Given Information]
#v(40pt)
#only("1-")[- Basis $B = (mat(1; 1), mat(1; -1))$]
#v(20pt)
#only("2-")[- Vector $v = mat(2; 0)$]
#only("1")[
#voiceover("We are given a basis B consisting of the vectors one, one and one, negative one.")
]
#only("2")[
#voiceover("We are also given a vector v equal to two, zero.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Write $v$ as a Linear Combination]
#v(40pt)
#only("1-")[- $v = a mat(1; 1) + b mat(1; -1)$]
#v(20pt)
#only("2-")[- $mat(2; 0) = a mat(1; 1) + b mat(1; -1)$]
#only("1")[
#voiceover("First, we write vector v as a linear combination of the basis vectors. We introduce two unknown coefficients a and b.")
]
#only("2")[
#voiceover("So, two, zero equals a times one, one plus b times one, negative one.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Solve the System of Equations]
#v(40pt)
#only("1-")[
- $2 = a + b$
- $0 = a - b$
]
#v(20pt)
#only("2-")[
- $a = 1$
- $b = 1$
]
#only("1")[
#voiceover("This gives us a system of two equations. The first equation is two equals a plus b, and the second equation is zero equals a minus b.")
]
#only("2")[
#voiceover("Solving this system, we find that a equals one and b equals one.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 3: Write the Coordinates]
#v(40pt)
#only("1-")[- The coordinates of $v$ relative to $B$ are $(1, 1)$]
#only("1")[
#voiceover("Therefore, the coordinates of vector v relative to the basis B are one, one.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Write $v$ as a linear combination of basis vectors]
#v(20pt)
#only("2-")[- Solve the resulting system of equations]
#v(20pt)
#only("3-")[- The solution gives the coordinates of $v$ relative to $B$]
#only("1")[
#voiceover("To summarize, we first wrote vector v as a linear combination of the basis vectors.")
]
#only("2")[
#voiceover("This gave us a system of equations, which we solved.")
]
#only("3")[
#voiceover("The solution to this system gives us the coordinates of vector v relative to the basis B.")
]
]