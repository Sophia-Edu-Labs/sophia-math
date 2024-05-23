#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Exercise]
#v(40pt)
#only("1-")[Given a linear mapping $T: R^2 -> R^2$ defined by $T(mat(x; y)) = mat(2x; 3y)$, find $T(mat(1; 2))$.]
#only("1")[
#voiceover("That's not quite right. Let's go through the steps to find the correct solution.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Understand the Mapping]
#v(40pt)
#only("1-")[- $T(mat(x; y)) = mat(2x; 3y)$ 🗺️]
#v(20pt)
#only("2-")[- Maps $mat(x; y)$ to $mat(2x; 3y)$ ✨]
#only("1")[
#voiceover("First, let's understand the given linear mapping. T is a function that takes a vector (x; y) and maps it to the vector (2x; 3y).")
]
#only("2")[
#voiceover("In other words, it doubles the first component and triples the second component of the input vector.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Identify the Input]
#v(40pt)
#only("1-")[- We need to find $T(mat(1; 2))$ 🎯]
#v(20pt)
#only("2-")[- The input vector is $mat(1; 2)$ 📥]
#only("1")[
#voiceover("Now, we need to find T of the vector (1; 2).")
]
#only("2")[
#voiceover("So, our input vector is (1; 2).")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 3: Apply the Mapping]
#v(40pt)
#only("1-")[- $T(mat(1; 2)) = mat(2*1; 3*2)$ 🧮]
#v(20pt)
#only("2-")[- $T(mat(1; 2)) = mat(2; 6)$ 📤]
#only("1")[
#voiceover("To apply the mapping, we replace x with 1 and y with 2 in the formula for T. This gives us T of (1; 2) equals (2 times 1; 3 times 2).")
]
#only("2")[
#voiceover("Simplifying, we get T of (1; 2) equals (2; 6).")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]
#v(40pt)
#only("1-")[- $T(mat(1; 2)) = mat(2; 6)$ ✅]
#only("1")[
#voiceover("Therefore, T of (1; 2) equals (2; 6). Great work on solving this exercise!")
]
]