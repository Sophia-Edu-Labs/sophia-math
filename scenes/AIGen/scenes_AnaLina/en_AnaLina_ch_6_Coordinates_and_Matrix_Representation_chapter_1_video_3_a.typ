#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Great Job! 🎉]
#v(40pt)
#only("1-")[That's the correct answer! The coordinates of $v = mat(2; 3)$ relative to the basis $B = (mat(1; 0), mat(0; 1))$ are indeed $(2, 3)$. 👏]
#only("1")[
#voiceover("Great job! That's the correct answer. The coordinates of the vector v equals 2; 3 relative to the basis B equals 1; 0 and 0; 1 are indeed 2, 3.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[Given:]
#v(20pt)
#only("1-")[- Basis $B = (mat(1; 0), mat(0; 1))$]
#v(20pt) 
#only("1-")[- Vector $v = mat(2; 3)$]
#only("1")[
#voiceover("Let's go through the solution step by step. We are given a basis B that consists of the vectors mat(1; 0) and mat(0; 1), and a vector v equals mat(2; 3).")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Understand the Basis]
#v(40pt)
#only("1-")[The basis vectors in $B$ are:]
#v(20pt)
#only("1-")[- $mat(1; 0)$ (points along the x-axis)]
#v(20pt)
#only("1-")[- $mat(0; 1)$ (points along the y-axis)]
#only("1")[
#voiceover("First, let's understand what the basis vectors in B represent. The vector 1; 0 points along the x-axis, and the vector 0; 1 points along the y-axis.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Express $v$ as a Linear Combination]
#v(40pt)
#only("1-")[We can write $v$ as a linear combination of the basis vectors:]
#v(20pt)
#only("1-")[$v = a mat(1; 0) + b mat(0; 1)$]
#v(20pt)
#only("2-")[$mat(2; 3) = a mat(1; 0) + b mat(0; 1)$]
#only("1")[
#voiceover("Next, we express the vector v as a linear combination of the basis vectors. That means we write v equals a times 1; 0 plus b times 0; 1, where a and b are scalars we need to find.")
]
#only("2")[
#voiceover("Substituting the values, we get 2; 3 equals a times 1; 0 plus b times 0; 1.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 3: Solve for $a$ and $b$]
#v(40pt)
#only("1-")[Equating corresponding components:]
#v(20pt)
#only("1-")[- $2 = a · 1 + b · 0 ⇒ a = 2$]
#v(20pt)
#only("1-")[- $3 = a · 0 + b · 1 ⇒ b = 3$]
#only("1")[
#voiceover("To find a and b, we equate the corresponding components. From the first component, we get 2 equals a times 1 plus b times 0, which means a equals 2. From the second component, we get 3 equals a times 0 plus b times 1, which means b equals 3.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Therefore...]
#v(40pt)
#only("1-")[The coordinates of $v = mat(2; 3)$ relative to the basis $B = (mat(1; 0), mat(0; 1))$ are $(2, 3)$. 🌟]
#only("1")[
#voiceover("Therefore, the coordinates of the vector v equals 2; 3 relative to the basis B equals 1; 0 and 0; 1 are 2, 3. Great work!")
]
]