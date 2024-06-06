#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Volume of a Cube 📦]
#v(40pt)
#only("1-")[- Given: Volume = 27 cubic units]
#v(20pt)
#only("2-")[- Formula: $V = s^3$, where $s$ is the side length]
#only("1")[
#voiceover("That's not quite right. Let's review the correct solution step by step. We are given that the volume of the cube is 27 cubic units.")
]
#only("2")[
#voiceover("We know that the volume of a cube is given by the formula V equals s cubed, where s is the length of a side of the cube.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Solving the Equation 🧮]
#v(40pt)
#only("1-")[- Substitute the known volume: $27 = s^3$]
#v(20pt)
#only("2-")[- Take the cube root of both sides: $root(3)(27) = root(3)(s^3)$]
#v(20pt)
#only("3-")[- Simplify: $3 = s$]
#only("1")[
#voiceover("We can substitute the known volume into the formula. So, 27 equals s cubed.")
]
#only("2")[
#voiceover("To solve for s, we need to take the cube root of both sides of the equation. The cube root of 27 equals the cube root of s cubed.")
]
#only("3")[
#voiceover("The cube root of 27 is 3, and the cube root of s cubed is simply s. Therefore, 3 equals s.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Answer 🎉]
#v(40pt)
#only("1-")[The length of one side of the cube is 3 units.]
#only("1")[
#voiceover("And that's our answer! The length of one side of the cube is 3 units. Excellent work!")
]
]