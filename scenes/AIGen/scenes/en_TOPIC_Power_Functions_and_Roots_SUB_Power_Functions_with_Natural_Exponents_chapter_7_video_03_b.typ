#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Volume of a Cube 🧊]
#v(40pt)
#only("1-")[- Given: $V = s^3$]
#v(20pt)
#only("2-")[- Find: $s$ when $V = 27$]
#only("1")[
#voiceover("Not quite. Let's go through the correct solution step by step.")
]
#only("2")[
#voiceover("We are given that the volume of a cube is equal to s cubed, where s is the side length. We need to find the side length when the volume is 27 cubic units.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Substitute 📝]
#v(40pt)
#only("1-")[- $V = s^3$]
#v(20pt)
#only("2-")[- $27 = s^3$]
#only("1")[
#voiceover("First, let's substitute the given volume into the formula.")
]
#only("2")[
#voiceover("We replace V with 27, so we have 27 equals s cubed.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Solve for $s$ 🧮]
#v(40pt)
#only("1-")[- $27 = s^3$]
#v(20pt)
#only("2-")[- $s = root(3, 27)$]
#v(20pt)
#only("3-")[- $s = 3$]
#only("1")[
#voiceover("Now, we need to solve this equation for s.")
]
#only("2")[
#voiceover("To do this, we take the cube root of both sides. The cube root of 27 is equal to s.")
]
#only("3")[
#voiceover("And the cube root of 27 is 3. So, s equals 3.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Answer ✅]
#v(40pt)
#only("1-")[- The side length $s$ is 3 units when the volume $V$ is 27 cubic units.]
#only("1")[
#voiceover("Therefore, the side length of the cube is 3 units when the volume is 27 cubic units. Well done!")
]
]