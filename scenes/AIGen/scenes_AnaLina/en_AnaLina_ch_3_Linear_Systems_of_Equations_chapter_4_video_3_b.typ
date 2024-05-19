#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("That's not quite right. Let's go through the correct solution step by step.")
]

#text(size: 30pt, weight: "bold")[Linear System]

#v(40pt)

#only("2-")[
- $x + y = 2$
- $2x - y = 3$
]
// The linear system is shown from slide 2 onward

#only("2")[
#voiceover("We're solving the linear system x plus y equals 2 and 2x minus y equals 3 using the Gaussian Algorithm.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Augmented Matrix]

#v(40pt)

#only("1-")[
$mat(1, 1, 2; 2, -1, 3)$
]
// The augmented matrix is shown from slide 1 onward

#only("1")[
#voiceover("First, we write the augmented matrix of the system.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Row Operations]

#v(40pt)

#only("1-")[
$mat(1, 1, 2; 0, -5, -5)$
]

#only("1")[
#voiceover("We perform row operations to transform the matrix into upper triangular form. Here, we subtract 2 times the first row from the second row.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 3: Back Substitution]

#v(40pt)

#only("1-")[
- From $-3y = -1$, $y = 1/3$
]

#only("2-")[
- Substitute $y = 1/3$ into $x + y = 2$:

$x + 1/3 = 2$

$x = 5/3$
]

#only("1")[
#voiceover("Now we perform back substitution. From the second equation, negative 3 times y equals negative 1, we get y equals one-third.")
]

#only("2")[
#voiceover("We substitute y equals one-third into the first equation, x plus y equals 2. This gives us x plus one-third equals 2, so x equals five-thirds.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Solution]

#v(40pt)

#only("1-")[
$x = 5/3$, $y = 1/3$
]
// The final solution is shown from slide 1 onward

#only("1")[
#voiceover("Therefore, the solution to the system is x equals five-thirds and y equals one-third. Great work! 🎉")
]
]